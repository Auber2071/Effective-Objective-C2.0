//
//  NSString+HKTString.m
//  Effective Objective-C2.0
//
//  Created by hankai on 2016/10/23.
//  Copyright © 2016年 Vencent. All rights reserved.
//

#import "NSString+HKTString.h"

@implementation NSString (HKTString)
-(NSString *)eoc_myLowercaseString{
    NSString *lowercase = [self eoc_myLowercaseString];
    NSLog(@"%@ => %@",self, lowercase);
    return lowercase;
}
@end
