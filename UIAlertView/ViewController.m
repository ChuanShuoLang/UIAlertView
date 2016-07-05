//
//  ViewController.m
//  UIAlertView
//
//  Created by wanghao on 16/6/30.
//  Copyright © 2016年 ChaoJian. All rights reserved.
//

#import "ViewController.h"
#import "One_tableview_cell_model_ViewController.h"
@interface ViewController ()

@property (nonatomic,strong)UIAlertController *alert;
@end

@implementation ViewController


-(UIAlertController *)alert
{
    if (!_alert) {
        _alert = [UIAlertController alertControllerWithTitle:@"doua" message:@"asdfsa" preferredStyle:UIAlertControllerStyleAlert];;
    
    }
    return _alert;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *bt =[UIButton buttonWithType:UIButtonTypeCustom];
    bt.frame = CGRectMake( 100, 100, 100, 100);
    bt.backgroundColor =[UIColor redColor];
    [bt addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
        One_tableview_cell_model_ViewController * one = [[One_tableview_cell_model_ViewController alloc]init];
        [self presentViewController:one animated:YES completion:nil];
        
    }];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
    okAction.enabled =NO;
    [self.alert addAction:cancelAction];
    [self.alert addAction:okAction];
}

-(void)click:(UIButton *)sender
{
    
    [self presentViewController:self.alert animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
