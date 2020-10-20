//
//  WeatherData.h
//  Chapter02
//
//  Created by AreYouOK on 2020/8/2.
//  Copyright © 2020 yangyun. All rights reserved.
// 

#import <Foundation/Foundation.h>
#import "SubjectProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface WeatherData : NSObject<SubjectProtocol>
///气候变化
- (void)setMeasurementsWithTemp:(float)temperature
                       humidity:(float)humidity
                       pressure:(float)pressure;

@end

NS_ASSUME_NONNULL_END
