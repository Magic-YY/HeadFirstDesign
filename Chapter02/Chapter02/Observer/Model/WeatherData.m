//
//  WeatherData.m
//  Chapter02
//
//  Created by AreYouOK on 2020/8/2.
//  Copyright © 2020 yangyun. All rights reserved.
//  订阅的主题

#import "WeatherData.h"


@interface WeatherData ()

@property (nonatomic,strong) NSMutableSet *mulSet;


@property (nonatomic,assign) float temperature;
@property (nonatomic,assign) float humidity;
@property (nonatomic,assign) float pressure;

@end

@implementation WeatherData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.mulSet = [NSMutableSet set];
    }
    return self;
}


#pragma mark public method
- (void)setMeasurementsWithTemp:(float)temperature
                       humidity:(float)humidity
                       pressure:(float)pressure {
    self.temperature = temperature;
    self.humidity = humidity;
    self.pressure = pressure;
    //设置后通知所有订阅者
    [self measurementsChange];
}

#pragma mark - private method
- (void)measurementsChange {
    [self notifyObservers];
}

#pragma mark SubjectProtocol
- (void)registerObserver:(id<ObserverProtocol>)obj {
    [self.mulSet addObject:obj];
}

- (void)removeObserver:(id<ObserverProtocol>)obj {
    if ([self.mulSet containsObject:obj]) {
        [self.mulSet removeObject:obj];
    }
}

- (void)notifyObservers {
    for (id<ObserverProtocol>obj in self.mulSet.allObjects) {
        [obj updateTemp:self.temperature humidity:self.humidity pressure:self.pressure];
    }
}

@end
