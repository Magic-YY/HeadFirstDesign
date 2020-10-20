//
//  ViewController.m
//  Chapter02
//
//  Created by AreYouOK on 2020/7/31.
//  Copyright © 2020 yangyun. All rights reserved.
//  观察者模式

#import "ViewController.h"
#import "WeatherData.h"
#import "CurrentConditionDisplay.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///主题
    WeatherData *weatherData = [[WeatherData alloc] init];
    ///订阅者
    CurrentConditionDisplay *curConditionDisplay = [[CurrentConditionDisplay alloc] init];
    ///订阅
    [weatherData registerObserver:curConditionDisplay];
    
    //主题状态变化
    [weatherData setMeasurementsWithTemp:80 humidity:65 pressure:4.f];
    sleep(3);
    NSLog(@"==========");
    //移除订阅
    [weatherData removeObserver:curConditionDisplay];
    //则不再显示更新信息
    [weatherData setMeasurementsWithTemp:90 humidity:75 pressure:9.f];
}


@end
