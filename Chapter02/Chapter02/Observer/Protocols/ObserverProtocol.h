//
//  ObserverProtocol.h
//  Chapter02
//
//  Created by AreYouOK on 2020/8/2.
//  Copyright © 2020 yangyun. All rights reserved.
//  

@protocol ObserverProtocol <NSObject>

///订阅者信息更新
- (void)updateTemp:(float)temp
          humidity:(float)humidity
          pressure:(float)pressure;

@end
