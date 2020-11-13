//
//  QuackCopunter.h
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/12.
//

#import <Foundation/Foundation.h>

#import "QuackableProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuackCopunter : NSObject<QuackableProtocol>

@property (nonatomic, assign, readonly) NSInteger numberOfQuacks;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithObject:(id<QuackableProtocol>)duck;

@end

NS_ASSUME_NONNULL_END
