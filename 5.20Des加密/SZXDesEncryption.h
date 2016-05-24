//
//  SZXDesEncryption.h
//  5.20Des加密
//
//  Created by 杨晓婧 on 16/5/20.
//  Copyright © 2016年 QingDaoShangTong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SZXDesEncryption : NSObject
+(NSString*) decryptUseDES:(NSString*)cipherText key:(NSString*)key;
+(NSString *) encryptUseDES:(NSString *)clearText key:(NSString *)key;
@end
