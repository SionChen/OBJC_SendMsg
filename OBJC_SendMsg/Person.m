//
//  Person.m
//  OBJC_SendMsg
//
//  Created by 超级腕电商 on 2018/4/9.
//  Copyright © 2018年 超级腕电商. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
@implementation Person
//-(void)appendString:(NSString *)str{
//    NSLog(@"%@===%@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
//}
//void dynamicAdditionMethodIMP(id self,SEL _cmd){
//    NSLog(@"dynamicAdditionMethodIMP");
//}
//+(BOOL)resolveClassMethod:(SEL)sel{
//    NSLog(@"resolveInstanceMethod: %@", NSStringFromSelector(sel));
//    if (sel == @selector(appendString:)) {
//        class_addMethod([self class], sel, (IMP)dynamicAdditionMethodIMP, "v@:");
//        return YES;
//    }
//    return [super resolveClassMethod:sel];
//}
//+(BOOL)resolveInstanceMethod:(SEL)sel{
//    NSLog(@"resolveInstanceMethod: %@", NSStringFromSelector(sel));
//    if (sel == @selector(appendString:)) {
//        class_addMethod([self class], sel, (IMP)dynamicAdditionMethodIMP, "v@:");
//        return YES;
//    }
//    return [super resolveInstanceMethod:sel];
//}
@end
