//
//  ViewController.m
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/4.
//

#import "ViewController.h"
#import "DuckSimulator.h"

#import "CountingDuckFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    DuckSimulator *simulator = [[DuckSimulator alloc] init];
//    [simulator simulate];
    
    id<AbstractDuckFactoryProtocol> factory = [[CountingDuckFactory alloc] init];
    [simulator factorySimulate:factory];
}


@end
