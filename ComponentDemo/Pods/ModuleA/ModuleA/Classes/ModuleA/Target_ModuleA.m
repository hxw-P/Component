//
//  Target_ModuleA.m
//  AFNetworking
//
//  Created by 华晓伟 on 2019/5/6.
//

#import "Target_ModuleA.h"
#import "AViewCrl.h"
#import <UIKit/UIKit.h>

@implementation Target_ModuleA

-(UIViewController *)Action_AViewCrl:(NSDictionary *)params
{
    AViewCrl * crl = [[AViewCrl alloc]init];
    //根据需求是否进行数据传递
    return  crl;
}

@end
