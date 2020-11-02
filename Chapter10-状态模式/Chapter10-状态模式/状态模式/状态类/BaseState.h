//
//  BaseState.h
//  Chapter10-状态模式
//
//  Created by 杨运 on 2020/11/2.
//

#import <Foundation/Foundation.h>
#import "StateProtocol.h"
#import "GumballMachine.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseState : NSObject<StateProtocol>

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)initWithGumballMachine:(GumballMachine *)gumballMachine;

@end

NS_ASSUME_NONNULL_END
