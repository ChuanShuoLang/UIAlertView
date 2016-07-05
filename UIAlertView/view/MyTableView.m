//
//  MyTableView.m
//  UIAlertView
//
//  Created by wanghao on 16/6/30.
//  Copyright © 2016年 ChaoJian. All rights reserved.
//

#import "MyTableView.h"
#import "MyTableViewCell.h"
NS_ASSUME_NONNULL_BEGIN
@interface MyTableView()<UITableViewDelegate,UITableViewDataSource>


@property(nonatomic) BOOL isSelected;
@end
@implementation MyTableView

-(id)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self =[super initWithFrame:frame style:style];
    if (self) {
        self.delegate = self;
        self.dataSource= self;
        self.backgroundColor =[UIColor lightGrayColor];
        self.showsVerticalScrollIndicator= NO;
        if (IOS7) {
            if ([self respondsToSelector:@selector(setSeparatorInset:)]) {
                [self   setSeparatorInset:UIEdgeInsetsZero];
            }
            if ([self respondsToSelector:@selector(setLayoutMargins:)]) {
                [self setLayoutMargins:UIEdgeInsetsZero];
            }
        }
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    if (!_isSelected) {
        NSInteger selectedIndex = 0;
        NSIndexPath *selectedIndexPath = [NSIndexPath indexPathForRow:selectedIndex inSection:0];
        [self tableView:self didSelectRowAtIndexPath:selectedIndexPath];
        _isSelected=YES;
    }


}
NS_ASSUME_NONNULL_END
@end
