//
//  ViewController.m
//  Capture07
//
//  Created by EarthlyButcher on 2020/9/23.
//

#import "ViewController.h"
#import "WildTurkey.h"
#import "TurkeyAdapter.h"
#import "MallardDuck.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MallardDuck *duck = [[MallardDuck alloc] init];
    WildTurkey *turkey = [[WildTurkey alloc] init];
    TurkeyAdapter *turkeyAdapter = [[TurkeyAdapter alloc] initWithTurkey:turkey];
    
    [turkey gobble];
    [turkey fly];
    
    NSLog(@"=======");
    [self test:duck];
    NSLog(@"=======");
    [self test:turkeyAdapter];
}

- (void)test:(id<DuckProtocol>)duck {
    [duck quack];
    [duck fly];
}

@end
