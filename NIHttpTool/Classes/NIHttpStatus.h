//
//  NIHttpStatus.h
//  NIHttpToolDemo
//
//  Created by nixinsheng on 2017/6/29.
//  Copyright © 2017年 nixinsheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reachability/Reachability.h"

@interface NIHttpStatus : NSObject
+(NetworkStatus)getNetWorkStatus;

/**
 *  是否是wifi环境
 *
 *  @return YES是/NO不是
 */
+(BOOL)isWifiEnable;

/**
 *  是否有网络连接
 *
 *  @return YES有/NO没有
 */
+(BOOL)isFi;

/**
 *  开启网络指示器
 */
+(void)startNetworkActivity;

/**
 *  关闭网络指示器
 */
+(void)stopNetworkActivity;
@end
