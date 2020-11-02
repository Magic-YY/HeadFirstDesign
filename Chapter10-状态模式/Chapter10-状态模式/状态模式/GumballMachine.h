//
//  GumballMachine.h
//  Chapter10-状态模式
//
//  Created by 杨运 on 2020/11/2.
//

#import <Foundation/Foundation.h>
#import "StateProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface GumballMachine : NSObject

@property (nonatomic, strong, readonly) id<StateProtocol> soldOutState;
@property (nonatomic, strong, readonly) id<StateProtocol> noQuarterState;
@property (nonatomic, strong, readonly) id<StateProtocol> hasQuarterState;
@property (nonatomic, strong, readonly) id<StateProtocol> soldState;
@property (nonatomic, strong, readonly) id<StateProtocol> winnerState;
@property (nonatomic, assign, readonly) NSInteger count;

@property (nonatomic, strong) id<StateProtocol> currentState;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;
- (instancetype)initWithNumberGumballs:(NSInteger)count;

- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)releaseBall;
- (void)refillNumberGumballs:(NSInteger)count;

@end

NS_ASSUME_NONNULL_END
