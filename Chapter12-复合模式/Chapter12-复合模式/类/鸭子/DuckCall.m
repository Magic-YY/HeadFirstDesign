//
//  DuckCall.m
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/4.
//

#import "DuckCall.h"

@implementation DuckCall

#pragma mark - QuackableProtocol
- (void)quack {
    NSLog(@"鸭鸣器-Kwak");
}

@end
