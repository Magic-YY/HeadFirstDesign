//
//  RubberDuck.m
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/4.
//

#import "RubberDuck.h"

@implementation RubberDuck

#pragma mark - QuackableProtocol
- (void)quack {
    NSLog(@"橡皮鸭-Squeak");
}

@end
