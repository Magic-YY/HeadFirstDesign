//
//  SimpleRemoteControl.h
//  Chapter06
//
//  Created by EarthlyButcher on 2020/9/11.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface SimpleRemoteControl : NSObject

///设置命令
- (void)setCommand:(id<CommandProtocol>)commandObj;
///模拟按钮点击
- (void)buttonWasPressed;

@end

NS_ASSUME_NONNULL_END
