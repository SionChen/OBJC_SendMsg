//
//  SonPerson.m
//  OBJC_SendMsg
//
//  Created by 超级腕电商 on 2018/4/9.
//  Copyright © 2018年 超级腕电商. All rights reserved.
//

#import "SonPerson.h"
#import "ForwardPerson.h"
#import "ForwardInvocation.h"
#import <objc/runtime.h>
#import <objc/message.h>
@interface SonPerson()
@property (nonatomic,strong) ForwardInvocation *invocation;

@end
@implementation SonPerson{
    //RuntimeMethodHelper * _help;
}
/*1、类的动态方法解析*/
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
/* 2、 备用接受者对象*/
//- (id)forwardingTargetForSelector:(SEL)aSelector{
//    NSLog(@"forwardingTargetForSelector");
//
//    return [ForwardPerson new];
//}
/* 3、 完整的消息转发*/
-(void)forwardInvocation:(NSInvocation *)anInvocation{
    NSLog(@"forwardInvocation");
    if ([ForwardInvocation instancesRespondToSelector:anInvocation.selector]) {
        [anInvocation invokeWithTarget:self.invocation];
    }
}
/*必须重新这个方法，消息转发机制使用从这个方法中获取的信息来创建NSInvocation对象 返回nil上面方法不执行*/
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
    if (!signature){
        if ([ForwardInvocation instancesRespondToSelector:aSelector]){
            signature = [ForwardInvocation instanceMethodSignatureForSelector:aSelector];
        }
    }
    return signature;
}

#pragma mark ---G
-(ForwardInvocation*)invocation{
    if(!_invocation){
        _invocation = [ForwardInvocation new];
    }
    return _invocation;
}
@end
