//
//  MyTableViewCell.h
//  UIAlertView
//
//  Created by wanghao on 16/6/30.
//  Copyright © 2016年 ChaoJian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell

@property (nonatomic,strong)UILabel *titleLabel; //标题

@property (nonatomic,strong)UIImageView *headerImageView; //头像




+(instancetype)cellForTableview:(UITableView *)tableView;
@end
