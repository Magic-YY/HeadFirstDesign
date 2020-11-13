//
//  GooseAdapter.h
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/12.
//

#import <Foundation/Foundation.h>

#import "QuackableProtocol.h"
#import "Goose.h"

NS_ASSUME_NONNULL_BEGIN

@interface GooseAdapter : NSObject<QuackableProtocol>

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithGoose:(Goose *)goose;

@end

NS_ASSUME_NONNULL_END
