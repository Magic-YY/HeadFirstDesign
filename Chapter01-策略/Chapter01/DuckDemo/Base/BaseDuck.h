//
//  BaseDuck.h
//  Chapter01
//
//  Created by AreYouOK on 2020/7/26.
//  Copyright © 2020 yangyun. All rights reserved.
//  

#import <Foundation/Foundation.h>
#import "FlyBehaviorProtocol.h"
#import "QuackBehaviorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseDuck : NSObject

@property (nonatomic,strong) id<FlyBehaviorProtocol> flyBehavior;
@property (nonatomic,strong) id<QuackBehaviorProtocol> quackBehavior;

- (void)swim;
- (void)performFly;
- (void)performQuack;

@end

NS_ASSUME_NONNULL_END
