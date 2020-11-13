//
//  DuckFactory.h
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/13.
//

#import <Foundation/Foundation.h>
#import "AbstractDuckFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DuckFactory : NSObject<AbstractDuckFactoryProtocol>

@end

NS_ASSUME_NONNULL_END
