//
//  ViewController.m
//  Chapter01
//
//  Created by AreYouOK on 2020/7/25.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "ViewController.h"
#import "MallardDuck.h"
#import "FlyNoWay.h"
#import "QuackLow.h"

@interface ViewController ()
@property (nonatomic,strong) MallardDuck *duck;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.duck = [[MallardDuck alloc] init];
    [self.duck performQuack];
    [self.duck performFly];
    
    //通过替换行为实现代理，实现同一个接口，不同的实现
    self.duck.flyBehavior = [[FlyNoWay alloc] init];
    self.duck.quackBehavior = [[QuackLow alloc] init];
    /**
     策略模式：
     意图：定义一系列的算法,把它们一个个封装起来, 并且使它们可相互替换。

    主要解决：在有多种算法相似的情况下，使用 if...else 所带来的复杂和难以维护。

    何时使用：一个系统有许多许多类，而区分它们的只是他们直接的行为。

    如何解决：将这些算法封装成一个一个的类，任意地替换。

    关键代码：实现同一个接口。

    应用实例： 1、诸葛亮的锦囊妙计，每一个锦囊就是一个策略。 2、旅行的出游方式，选择骑自行车、坐汽车，每一种旅行方式都是一个策略
     */
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.duck performFly];
    [self.duck performQuack];
}

@end
