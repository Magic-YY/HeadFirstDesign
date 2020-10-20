//
//  Coffee.m
//  Capture08
//
//  Created by EarthlyButcher on 2020/10/2.
//

#import "Coffee.h"

@implementation Coffee

- (void)brew {
    NSLog(@"煮coffee");
}

- (void)addCondiments {
    NSLog(@"添加牛奶");
}

- (BOOL)wantCondiments {
    return NO;
}

@end
