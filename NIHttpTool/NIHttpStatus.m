//
//  NIHttpStatus.m
//  NIHttpToolDemo
//
//  Created by nixinsheng on 2017/6/29.
//  Copyright © 2017年 nixinsheng. All rights reserved.
//

#import "NIHttpStatus.h"
#import <UIKit/UIKit.h>
#import "Reachability/Reachability.h"

@implementation NIHttpStatus
#pragma mark - 获取当前网络状态
+(NetworkStatus)getNetWorkStatus{
    return [[Reachability reachabilityForInternetConnection] currentReachabilityStatus];
}

#pragma mark - 是否处于WIFI环境中
+(BOOL)isWifiEnable{
    return [self getNetWorkStatus]==ReachableViaWiFi;
}

#pragma mark - 是否有网络数据连接：含2G/3G/WIFI
+(BOOL)isFi{
    return [self getNetWorkStatus] != NotReachable;
}

#pragma mark - 开启网络指示器
+(void)startNetworkActivity{
    dispatch_async(dispatch_get_main_queue(), ^{
        [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
    });
}

#pragma mark - 关闭网络指示器
+(void)stopNetworkActivity{
    dispatch_async(dispatch_get_main_queue(), ^{
        [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
    });
}
@end
