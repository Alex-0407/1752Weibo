//
//  MessageViewController.h
//  1752WXWeibo
//
//  Created by 董兴斌 on 16/2/2.
//  Copyright © 2016年 董兴斌. All rights reserved.
//

#import "BaseViewController.h"
#import "WeiboTableView.h"

@interface MessageViewController : BaseViewController<UITableViewEventDelegate>

@property(nonatomic,retain)WeiboTableView *tableView;

@end
