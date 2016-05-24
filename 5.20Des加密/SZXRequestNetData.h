//
//  SZXRequestNetData.h
//  5.20Des加密
//
//  Created by 杨晓婧 on 16/5/20.
//  Copyright © 2016年 QingDaoShangTong. All rights reserved.
//  处理网络请求类

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
@interface SZXRequestNetData : NSObject
+ (void)byHttpPost:(NSString *)URLString
                      parameters:(id)parameters
                         success:(void (^)(id responseObject))success
       failure:(void (^)(NSError *error))failure;

+ (void)byHttpGet:(NSString *)URLString
        parameters:(id)parameters
           success:(void (^)(id responseObject))success
           failure:(void (^)(NSError *error))failure;

@end
