//
//  NIFileDataModel.h
//  NIHttpToolDemo
//
//  Created by nixinsheng on 2017/6/29.
//  Copyright © 2017年 nixinsheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NIFileDataModel : NSObject
/**
 *  文件数据
 */
@property (nonatomic, strong) NSData *data;

/**
 *  参数名
 */
@property (nonatomic, copy) NSString *name;

/**
 *  文件名 必须加后缀
 */
@property (nonatomic, copy) NSString *filename;

/**
 *  文件类型
 */
@property (nonatomic, copy) NSString *mimeType;

/**
 初始化构造
 
 @param data <#data description#>
 @param name <#name description#>
 @param fileName <#fileName description#>
 @param mineType <#mineType description#>
 @return <#return value description#>
 */
-(NIFileDataModel *)initWithData:(NSData*)data andName:(NSString*)name andFileName:(NSString*)fileName andMineType:(NSString*)mineType;
@end
