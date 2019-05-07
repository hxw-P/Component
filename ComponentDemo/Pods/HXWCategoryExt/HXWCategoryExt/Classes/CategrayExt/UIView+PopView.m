//
//  UIView+PopView.m
//  HXWCategoryExt
//
//  Created by 华晓伟 on 2019/5/5.
//

#import "UIView+PopView.h"
#define SCREEN_WIDTH ([[UIScreen mainScreen]bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen]bounds].size.height)
@implementation UIView(PopView)

+(void)popView:(NSString *)title{
    UILabel *lbl = [[UILabel alloc] init];
    lbl.textColor = [UIColor blackColor];
    lbl.text = title.length == 0 ? @"没有输入内容" : title;
    lbl.frame = CGRectMake(SCREEN_WIDTH/2 - 70, SCREEN_HEIGHT/2 - 30, 140, 60);
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    if (!window) {
        window = [[UIApplication sharedApplication].windows objectAtIndex:0];
    }
    __block UIView *currentView;
    [window.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        UIView *view = window.subviews[idx];
        if (view.frame.size.height == SCREEN_HEIGHT&&view.frame.size.width == SCREEN_WIDTH) {
            currentView = view;
        }
    }];
    [currentView addSubview:lbl];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [lbl removeFromSuperview];
    });
}

@end
