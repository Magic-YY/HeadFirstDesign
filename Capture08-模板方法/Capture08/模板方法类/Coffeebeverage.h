//
//  Coffeebeverage.h
//  Capture08
//
//  Created by EarthlyButcher on 2020/10/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Coffeebeverage : NSObject
///冲泡饮料直接调用的集合方法
- (void)prepareRecipe;

///需要锡类复写的方法
- (void)brew;
- (void)addCondiments;
- (BOOL)wantCondiments;

@end

NS_ASSUME_NONNULL_END
