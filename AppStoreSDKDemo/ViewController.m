//
//  ViewController.m
//  AppStoreSDKDemo
//
//  Created by 石文文 on 2018/7/21.
//  Copyright © 2018年 石文文. All rights reserved.
//

#import "ViewController.h"
#import <AppUpdate/AppUpdate.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)checkUpdate:(id)sender {
    [[SAppUpdate shared] checkUpdateWith:^(BOOL needUpdate) {
        if (needUpdate) {
            //一些保存操作等
        }else {
            dispatch_async(dispatch_get_main_queue(), ^{
                [[[UIAlertView alloc]initWithTitle:@"提示" message:@"暂无更新" delegate:nil cancelButtonTitle:@"知道了" otherButtonTitles:nil] show];
                });
        }
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
