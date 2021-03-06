//
//  ThemeImageView.m
//  1752WXWeibo
//
//  Created by 董兴斌 on 16/2/2.
//  Copyright © 2016年 董兴斌. All rights reserved.
//

#import "ThemeImageView.h"
#import "ThemeManager.h"

@implementation ThemeImageView

//通过xib创建时不走init，而是走这个awakeFromNib方法
- (void)awakeFromNib
{
    [super awakeFromNib];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(themeNotification:) name:kThemeDidChangeNotification object:nil];
}

- (id)initwithImageName:(NSString *)imageName
{
    self=[self init];
    if (self) {
        self.imageName=imageName;
    }
    return self;
}

- (id)init
{
    self=[super init];
    if (self) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(themeNotification:) name:kThemeDidChangeNotification object:nil];
    }
    return self;
}


- (void)setImageName:(NSString *)imageName
{
    if (_imageName!=imageName) {
        [_imageName release];
        _imageName=[imageName copy];
    }
    [self loadThemeImage];

}

- (void)themeNotification:(NSNotification *)notify
{
    [self loadThemeImage];
}

- (void)loadThemeImage
{
    if (self.imageName==nil) {
        return;
    }
    UIImage *image=[[ThemeManager shareInstance] getThemeImage:self.imageName];
    image=[image stretchableImageWithLeftCapWidth:self.leftCapWidth topCapHeight:self.topCapHeight];
    self.image=image;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}

@end
