//
//  SubjectProtocol.h
//  Chapter02
//
//  Created by AreYouOK on 2020/8/2.
//  Copyright © 2020 yangyun. All rights reserved.
//  

#import "ObserverProtocol.h"

@protocol SubjectProtocol <NSObject>
///添加订阅者
- (void)registerObserver:(id<ObserverProtocol>) obj;
///移除订阅者
- (void)removeObserver:(id<ObserverProtocol>) obj;
///通知所有订阅者
- (void)notifyObservers;

@end
