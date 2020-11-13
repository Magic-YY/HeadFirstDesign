//
//  AbstractDuckFactoryProtocol.h
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/12.
//

#ifndef AbstractDuckFactoryProtocol_h
#define AbstractDuckFactoryProtocol_h

#import "QuackableProtocol.h"

@protocol AbstractDuckFactoryProtocol <NSObject>

- (id<QuackableProtocol>)createMallardDuck;
- (id<QuackableProtocol>)createReadheadDuck;
- (id<QuackableProtocol>)createDuckCall;
- (id<QuackableProtocol>)createRubberDuck;

@end

#endif /* AbstractDuckFactoryProtocol_h */
