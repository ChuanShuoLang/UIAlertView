//
//  MyTableView.h
//  UIAlertView
//
//  Created by wanghao on 16/6/30.
//  Copyright © 2016年 ChaoJian. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol MyDelegate<NSObject>


@required



@optional
/**
 *  <#Description#>
 *
 *  @param rightArray   <#rightArray description#>
 *  @param lastIndex    <#lastIndex description#>
 *  @param currentIndex <#currentIndex description#>
 */

- (void)navMenuClickIndexPathRow:(NSMutableArray *)rightArray lastIndexPath:(NSIndexPath *)lastIndex currentIndexPath:(NSIndexPath *)currentIndex;

@end

@interface MyTableView : UITableView

@property (nonatomic,strong) NSArray *menuArray;   //菜单数组

@property (nonatomic,weak) id<MyDelegate> mydelegate;
@end
