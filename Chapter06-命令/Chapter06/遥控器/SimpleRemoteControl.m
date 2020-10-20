//
//  SimpleRemoteControl.m
//  Chapter06
//
//  Created by EarthlyButcher on 2020/9/11.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "SimpleRemoteControl.h"

@interface SimpleRemoteControl ()

@property (nonatomic,strong) id<CommandProtocol> commandObj;

@end

@implementation SimpleRemoteControl

#pragma mark - public method
///设置命令
- (void)setCommand:(id<CommandProtocol>)commandObj
{
    self.commandObj = commandObj;
}

///模拟按钮点击
- (void)buttonWasPressed {
    [self.commandObj execute];
}

@end
