//
//  ViewController.m
//  Chapter06
//
//  Created by EarthlyButcher on 2020/9/11.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "ViewController.h"
#import "SimpleRemoteControl.h"
#import "LightOnCommand.h"
#import "Light.h"
#import "RemoteControl.h"
#import "LightOffCommand.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     命令模式：将请求封装成对象，以便使用不同的请求、队列或日志来参数化其他对象，命令模式也支持可撤销操作。
     */
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    SimpleRemoteControl *remoteControl = [[SimpleRemoteControl alloc] init];
//    Light *light = [[Light alloc] init];
//    LightOnCommand *lightCommand = [[LightOnCommand alloc] initWithLight:light];
//    [remoteControl setCommand:lightCommand];
//    [remoteControl buttonWasPressed];
    
    RemoteControl *remoteControl = [[RemoteControl alloc] init];
    Light *light = [[Light alloc] init];
    LightOnCommand *lightOnCommand = [[LightOnCommand alloc] initWithLight:light];
    LightOffCommand *lightOffCommand = [[LightOffCommand alloc] initWithLight:light];
    [remoteControl setCommand:0 onCommand:lightOnCommand offCommand:lightOffCommand];
    [remoteControl onButtonWasPushed:0];
    [remoteControl offButtonWasPushed:0];
    [remoteControl onButtonWasPushed:0];
    sleep(2);
    [remoteControl undoButtonWasPushed];
}


@end
