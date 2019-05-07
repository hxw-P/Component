//
//  CTMediator+ModuleA.m
//  AFNetworking
//
//  Created by 华晓伟 on 2019/5/7.
//

#import "CTMediator+ModuleA.h"

NSString * const kCTMediatorTargetModuleA = @"ModuleA";
NSString * const kCTMediatorActionAViewCrl = @"AViewCrl";

@implementation CTMediator (ModuleA)

-(UIViewController *)Action_AViewCrl:(NSDictionary *)dict
{
    UIViewController  * viewCrl =  [self performTarget:kCTMediatorTargetModuleA action:kCTMediatorActionAViewCrl params:@{@"key":@"value"} shouldCacheTarget:NO];
    
    if ([viewCrl isKindOfClass:[UIViewController class]]) {
        return viewCrl;
    }
    else {
        //carsh 处理
        return  nil;
    }
}

@end
