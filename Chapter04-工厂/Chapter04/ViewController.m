//
//  ViewController.m
//  Chapter04
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "ViewController.h"
#import "PizzaStore.h"
#import "SimplePizzaFactory.h"

#import "NYPizzaStore.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    PizzaStore *store = [[PizzaStore alloc] init];
//    SimplePizzaFactory *simpleFactory = [SimplePizzaFactory new];
//    store.delegate = simpleFactory;
//    [store orderPizza:@"clam"];
    
    NYPizzaStore *nyStore = [[NYPizzaStore alloc] init];
    [nyStore orderPizza:@"cheese"];
}


@end
