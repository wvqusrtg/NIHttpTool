//
//  NSDictionary+Json.h
//  NIHttpToolDemo
//
//  Created by nixinsheng on 2017/6/29.
//  Copyright © 2017年 nixinsheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Json)
/**
 *  把当前Dictionary转换为json
 *
 *  @return 转换后的json字符串
 */
- (NSString *)dictionaryToJson;

/**
 *  把指定的Dictionary转换为json
 *
 *  @param dictionary 要转换的dictionary
 *
 *  @return 转换后的json字符串，失败则为{}
 */
+ (NSString *)dictionaryToJson:(NSDictionary *)dictionary;

+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonString;/**<json转dic*/
@end
