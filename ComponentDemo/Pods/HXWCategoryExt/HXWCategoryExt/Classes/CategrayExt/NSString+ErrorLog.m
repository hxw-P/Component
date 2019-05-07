//
//  NSString+ErrorLog.m
//  ComponentDemo
//
//  Created by 华晓伟 on 2019/4/29.
//  Copyright © 2019年 华晓伟. All rights reserved.
//

#import <objc/runtime.h>
#import "NSString+ErrorLog.h"

@implementation NSString(ErrorLog)

+(void)load
{
    [super load];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Method oldMethod = class_getInstanceMethod([self class], @selector(substringToIndex:));
        Method newMethod = class_getInstanceMethod([self class], @selector(hxw_substringToIndex:));
        method_exchangeImplementations(oldMethod, newMethod);
    });
}

-(NSString *)hxw_substringToIndex:(NSUInteger)to {
    if (self.length - 1 < to) {
        NSLog(@"数组越界");
    }
    else {
        NSLog(@"数组没越界");
    }
    return self;
}

@end
