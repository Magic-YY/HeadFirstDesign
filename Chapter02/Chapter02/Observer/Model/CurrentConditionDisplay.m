//
//  CurrentConditionDisplay.m
//  Chapter02
//
//  Created by AreYouOK on 2020/8/2.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "CurrentConditionDisplay.h"
#import "DisplayElementProtocol.h"

@interface CurrentConditionDisplay ()<DisplayElementProtocol>

@property (nonatomic,assign) float temperature;
@property (nonatomic,assign) float humidity;
@property (nonatomic,assign) float pressure;

@end

@implementation CurrentConditionDisplay

#pragma mark - ObserverProtocol
- (void)updateTemp:(float)temp humidity:(float)humidity pressure:(float)pressure {
    self.temperature = temp;
    self.humidity = humidity;
    self.pressure = pressure;
    [self display];
}

#pragma mark - DisplayElementProtocol
- (void)display {
    NSLog(@"\nCurrentConditionDisplay：\ntemperature：%.1f\nhumidity：%.1f\nperssure：%.1f", self.temperature, self.humidity, self.pressure);
}

@end
