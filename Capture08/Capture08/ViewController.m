//
//  ViewController.m
//  Capture08
//
//  Created by EarthlyButcher on 2020/9/30.
//

#import "ViewController.h"
#import "Tea.h"
#import "Coffee.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     模板方法模式：在一个方法中定义一个算法（执行的一组步骤）的框架，而将一些步骤延迟到子类中。模板方法使得子类可以在不改变算法结构的情况下，重新定义算法中的某些步骤。
     类似于Swift的filter尾随闭包，包装静态方法，提供处理逻辑
     */
    
    Tea *tea = [[Tea alloc] init];
    [tea prepareRecipe];
    NSLog(@"******************");
    Coffee *coffee = [[Coffee alloc] init];
    [coffee prepareRecipe];
}


@end
