//
//  TabbarController.m
//  ComponentDemo
//
//  Created by 华晓伟 on 2019/4/30.
//  Copyright © 2019年 华晓伟. All rights reserved.
//

#import "TabbarController.h"
#import "BViewCrl.h"

@interface TabbarController ()

@end

@implementation TabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置子控制器
    UIViewController *aCrl = [[CTMediator sharedInstance] Action_AViewCrl:@{@"": @""}];
    [self addChildVc:aCrl title:@"A"];
    
    UIViewController *bCrl = [[BViewCrl alloc] init];
    [self addChildVc:bCrl title:@"B"];
    
    self.tabBar.translucent = NO;
}

/**
 *  添加一个子控制器
 *
 *  @param childVc       子控制器
 *  @param title         标题
 */
- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title
{
    // 设置子控制器的文字和图片
    childVc.title = title;
    UINavigationController *navi = [[UINavigationController alloc]initWithRootViewController:childVc];
    [self addChildViewController:navi];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)dealloc
{
}

@end
