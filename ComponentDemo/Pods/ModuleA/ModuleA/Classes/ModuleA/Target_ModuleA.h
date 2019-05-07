//
//  Target_ModuleA.h
//  AFNetworking
//
//  Created by 华晓伟 on 2019/5/6.
//

#import <Foundation/Foundation.h>
#import <CTMediator/CTMediator.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_ModuleA : NSObject

//* 组件A模块对外暴露的接口 */
//获取A模块主控制器实例
-(UIViewController *)Action_AViewCrl:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
