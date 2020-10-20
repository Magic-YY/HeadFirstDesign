//
//  QuackBehaviorProtocol.h
//  Chapter01
//
//  Created by AreYouOK on 2020/7/26.
//  Copyright © 2020 yangyun. All rights reserved.
//

@protocol QuackBehaviorProtocol <NSObject>
//定义鸭子叫方法，叫声如何由具体类实现协议
- (void)quack;

@end
