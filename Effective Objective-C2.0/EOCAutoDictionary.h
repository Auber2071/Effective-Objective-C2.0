//
//  EOCAutoDictionary.h
//  Effective Objective-C2.0
//
//  Created by hankai on 2016/10/23.
//  Copyright © 2016年 Vencent. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCAutoDictionary : NSObject
@property (nonatomic, strong) NSString *string;
@property (nonatomic, strong) NSNumber *number;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) id opaqueObject;

@end
