//
//  ViewController.m
//  Effective Objective-C2.0
//
//  Created by hankai on 2016/10/23.
//  Copyright © 2016年 Vencent. All rights reserved.
//

#import "ViewController.h"
#import "EOCAutoDictionary.h"

#import "NSString+HKTString.h"
#import <objc/runtime.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self methodSwizzling];
    
    [self messageForwarding];


}
//第12条
//消息转发机制
- (void)messageForwarding{
    EOCAutoDictionary *dict = [[EOCAutoDictionary alloc]init];
    dict.string = @"messageForwarding";
    NSLog(@"dict.string = %@",dict.string);
}
//第13条
//方法调配：方法交换，此方法多用于程序调试，很少
- (void)methodSwizzling{
    
    //全局交换
    Method originalMethod = class_getInstanceMethod([NSString class], @selector(lowercaseString));
    Method swappedMethod = class_getInstanceMethod([NSString class], @selector(eoc_myLowercaseString));
    method_exchangeImplementations(originalMethod, swappedMethod);

    NSString *string = @"This iS tHe StrING";
    NSString *lowercaseString = [string lowercaseString];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
