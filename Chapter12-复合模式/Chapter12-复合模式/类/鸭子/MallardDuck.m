//
//  MallardDuck.m
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/4.
//

#import "MallardDuck.h"

@implementation MallardDuck

#pragma mark - QuackableProtocol
- (void)quack {
    NSLog(@"MallardDuck-Quack");
}

@end
