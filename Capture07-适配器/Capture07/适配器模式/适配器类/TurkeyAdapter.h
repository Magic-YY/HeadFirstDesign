//
//  TurkeyAdapter.h
//  Capture07
//
//  Created by EarthlyButcher on 2020/9/23.
//  将火鸡转化成鸭子调用

#import <Foundation/Foundation.h>
#import "DuckProtocol.h"
#import "TurkeyProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface TurkeyAdapter : NSObject<DuckProtocol>

- (id<DuckProtocol>)initWithTurkey:(id<TurkeyProtocol>)turkey;

@end

NS_ASSUME_NONNULL_END
