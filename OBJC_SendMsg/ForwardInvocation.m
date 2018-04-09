//
//  ForwardInvocation.m
//  OBJC_SendMsg
//
//  Created by 超级腕电商 on 2018/4/9.
//  Copyright © 2018年 超级腕电商. All rights reserved.
//

#import "ForwardInvocation.h"

@implementation ForwardInvocation
-(void)appendString:(NSString *)str{
    NSLog(@"%@===%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
