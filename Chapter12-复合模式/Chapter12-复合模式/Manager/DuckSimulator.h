//
//  DuckSimulator.h
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/4.
//

#import <Foundation/Foundation.h>
#import "AbstractDuckFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DuckSimulator : NSObject

- (void)simulate;

- (void)factorySimulate:(id<AbstractDuckFactoryProtocol>)factory;

@end

NS_ASSUME_NONNULL_END
