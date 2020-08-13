//
//  NSString+Pwd.h
//  NIHttpToolDemo
//
//  Created by nixinsheng on 2017/6/29.
//  Copyright © 2017年 nixinsheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Pwd)
- (NSString *)MD5Digest;/**<32位MD5*/


//Base64
+ (NSString *)base64StringFromText:(NSString *)text;/**<转base64*/
+ (NSString *)base64EncodedStringFrom:(NSData *)data;/**<data转base64*/
+ (NSString *)textFromBase64String:(NSString *)base64;/**<文本转base64*/

+(NSString *)DESEncryptSting:(NSString *)sText key:(NSString *)key andDesiv:(NSString *)ivDes;/**<DES加密*/

+(NSString *)DESDecryptWithDESString:(NSString *)sText key:(NSString *)key andiV:(NSString *)iv;/**<DES解密*/

+ (NSData *)AES128EncryptWithKey:(NSString *)key iv:(NSString *)iv withNSData:(NSData *)data;/**<AES加密*/

+ (NSData *)AES128DecryptWithKey:(NSString *)key iv:(NSString *)iv withNSData:(NSData *)data;/**<AES解密*/

+ (NSString*) stringWithGUID;/**<生成GUID*/


/**
 蚂蚁推推 StringToArray_nixs 2017年04月16日16:31:28
 
 @param targetStr 目标待切割字符串
 @return 切割后的目标数组
 */
+(NSArray*)StringToArray_NI:(NSString*)targetStr;

/**
 时间戳转标准时间字符串
 
 @param timerStr 时间戳
 @return 标准时间字符串
 */
+(NSString *)dateStringFromNumberTimer_NI:(NSString *)timerStr;
@end
