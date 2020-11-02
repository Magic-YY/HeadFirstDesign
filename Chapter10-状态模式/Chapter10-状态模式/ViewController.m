//
//  ViewController.m
//  Chapter10-状态模式
//
//  Created by 杨运 on 2020/11/2.
//

#import "ViewController.h"

#import "GumballMachine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GumballMachine *machine = [[GumballMachine alloc] initWithNumberGumballs:5];
    [machine insertQuarter];
    [machine turnCrank];
    NSLog(@"=======");
    [machine insertQuarter];
    [machine turnCrank];
    [machine insertQuarter];
    [machine turnCrank];
    NSLog(@"=====");
    [machine refillNumberGumballs:10];
    [machine insertQuarter];
    [machine turnCrank];
}


@end
