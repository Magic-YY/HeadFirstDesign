//
//  ViewController.m
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#import "ViewController.h"
#import "Waitress.h"
#import "DinerMenu.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //核心：针对接口编程
    
    /**
     迭代器模式：提供一种方法顺序访问聚合对象种的各个元素，而又不暴露其内部的实现细节
     组合模式：一种高层抽象，编译以一种统一的方式去处理对象
     */
    DinerMenu *dinerMenu = [[DinerMenu alloc] init];
    Waitress *waitress = [[Waitress alloc] initWithMenu:dinerMenu];
    [waitress prineMenu];
}


@end
