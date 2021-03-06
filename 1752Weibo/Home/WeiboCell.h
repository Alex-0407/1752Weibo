//
//  WeiboCell.h
//  1752WXWeibo
//
//  Created by 董兴斌 on 16/2/2.
//  Copyright © 2016年 董兴斌. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeiboView.h"
#import "WeiboModel.h"
#import "InterfaceImageView.h"

@interface WeiboCell : UITableViewCell

//微博视图
@property(nonatomic,retain)WeiboView *weiboView;
//微博数据模型对象
@property(nonatomic,retain)WeiboModel *weiboModel;


//用户头像视图
@property(nonatomic,retain)InterfaceImageView *userImage;
//昵称
@property(nonatomic,retain)UILabel *nickLabel;
//转发数
@property(nonatomic,retain)UILabel *repostCountLabel;
//评论数
@property(nonatomic,retain)UILabel *commentLabel;
//发布来源
@property(nonatomic,retain)UILabel *sourceLabel;
//发布时间
@property(nonatomic,retain)UILabel *createLabel;

@end
