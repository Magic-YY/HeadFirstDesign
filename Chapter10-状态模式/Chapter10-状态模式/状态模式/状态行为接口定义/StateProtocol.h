//
//  StateProtocol.h
//  Chapter10-状态模式
//
//  Created by 杨运 on 2020/11/2.
//

#ifndef StateProtocol_h
#define StateProtocol_h

@protocol StateProtocol <NSObject>

@optional
///投入25分
- (void)insertQuarter;
///退回25分
- (void)ejectQuarter;
///转动曲柄
- (void)turnCrank;
///发放糖果
- (void)dispense;

@end


#endif /* StateProtocol_h */
