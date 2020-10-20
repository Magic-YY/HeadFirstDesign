//
//  ViewController.m
//  Chapter03
//
//  Created by AreYouOK on 2020/8/2.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "ViewController.h"

#import "Espresso.h"
#import "DarkRoast.h"
#import "HouseBlend.h"

#import "Mocha.h"
#import "Whip.h"
#import "Soy.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     Espresso: 1.99
     HouseBlend: 0.89
     DarkRoast: 0.99
     Decaf: 1.05
     
     Mocha: 0.2
     Soy: 0.15
     Whip: 0.1
     
     Big: 0.2
     Middle: 0.15
     Small: 0.1
     */

    Beverage *berage = [[Espresso alloc] init];
    berage.sizeType = BeverageSizeTypeMiddle;
    NSLog(@"\nBevarage：desc: %@\ncost: %.2f", berage.descString, [berage cost]);
    
    Beverage *beverage2 = [[DarkRoast alloc] init];
    beverage2.sizeType = BeverageSizeTypeBig;
    beverage2 = [[Mocha alloc] initWithBeverage:beverage2];
    beverage2 = [[Mocha alloc] initWithBeverage:beverage2];
    beverage2 = [[Whip alloc] initWithBeverage:beverage2];
    NSLog(@"\nBevarage2：desc: %@\ncost: %.2f", beverage2.descString, [beverage2 cost]);
    
    Beverage *beverage3 = [[HouseBlend alloc] init];
    beverage3.sizeType = BeverageSizeTypeSmall;
    beverage3 = [[Soy alloc] initWithBeverage:beverage3];
    beverage3 = [[Mocha alloc] initWithBeverage:beverage3];
    beverage3 = [[Whip alloc] initWithBeverage:beverage3];
    NSLog(@"\nBevarage23：desc: %@\ncost: %.2f", beverage3.descString, [beverage3 cost]);
}


@end
