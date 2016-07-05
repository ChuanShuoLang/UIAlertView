//
//  MyTableViewCell.m
//  UIAlertView
//
//  Created by wanghao on 16/6/30.
//  Copyright © 2016年 ChaoJian. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{

    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor=[UIColor redColor];
        _titleLabel =[[UILabel alloc]initWithFrame:CGRectMake(8,0, 100, 50)];
        self.titleLabel.backgroundColor =[UIColor blackColor];
        self.titleLabel.textColor =[UIColor blackColor];
        self.titleLabel.font =[UIFont systemFontOfSize:16.f];
        self.titleLabel.textAlignment =NSTextAlignmentCenter;
        [self.contentView addSubview:self.titleLabel];
    }
    return self;
}


+(instancetype)cellForTableview:(UITableView *)tableView
{
    static NSString *cellIndetifier = @"myCell";
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndetifier];
    if (nil==cellIndetifier) {
        cell = [[MyTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndetifier];
        
    }
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];;
    return cell;

}
@end
