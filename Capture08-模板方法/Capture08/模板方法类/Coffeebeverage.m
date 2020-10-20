//
//  Coffeebeverage.m
//  Capture08
//
//  Created by EarthlyButcher on 2020/10/2.
//

#import "Coffeebeverage.h"

@implementation Coffeebeverage

///冲泡饮料总步骤集合方法
- (void)prepareRecipe {
    [self boilWater];
    [self brew];
    [self pourIncup];
    if ([self wantCondiments]) {
        [self addCondiments];
    }
}

- (void)boilWater {
    NSLog(@"烧水");
}

- (void)brew {
    
}

- (void)pourIncup {
    NSLog(@"倒进杯子");
}

- (void)addCondiments {
    
}

- (BOOL)wantCondiments {
    return NO;
}

@end
