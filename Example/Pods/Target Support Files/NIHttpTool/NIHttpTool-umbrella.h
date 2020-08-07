#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "NIFileDataModel.h"
#import "NIHttpStatus.h"
#import "NIHttpTool.h"
#import "NSDictionary+Json.h"
#import "NSString+Pwd.h"

FOUNDATION_EXPORT double NIHttpToolVersionNumber;
FOUNDATION_EXPORT const unsigned char NIHttpToolVersionString[];

