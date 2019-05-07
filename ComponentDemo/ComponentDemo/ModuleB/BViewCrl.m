//
//  BViewCrl.m
//  ComponentDemo
//
//  Created by 华晓伟 on 2019/4/30.
//  Copyright © 2019年 华晓伟. All rights reserved.
//

#import "BViewCrl.h"
#import <HXWCategoryExt/UIView+PopView.h>

@interface BViewCrl ()

@end

@implementation BViewCrl

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    [UIView popView:@""];
}

@end
