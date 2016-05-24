//
//  ViewController.m
//  5.20Des加密
//
//  Created by 杨晓婧 on 16/5/20.
//  Copyright © 2016年 QingDaoShangTong. All rights reserved.
//

#import "ViewController.h"
#import "SZXDesEncryption.h"
#import "SZXRequestNetData.h"
#define SecreatKey @"lnhuaxia"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /** 加密 */
    NSString * encrypt = [SZXDesEncryption encryptUseDES:@"111111" key:SecreatKey];
    NSLog(@"encrypt = %@",encrypt);
    /** 解密 */
    NSString *decrypt = [SZXDesEncryption decryptUseDES:encrypt key:SecreatKey];
    NSLog(@"decrypt = %@",decrypt);
    
    NSDictionary *dic = @{@"uname":@"ceshi",@"password":encrypt};
    NSString *url = @"http://lunuo.vshoutao.com/appapi/appi.php?mod=login";
    [SZXRequestNetData byHttpPost:url parameters:dic success:^(id responseObject) {
        NSLog(@"%@",responseObject);;
    } failure:^(NSError *error) {
        
    }];
    
}




@end
