//
//  Tea.m
//  Capture08
//
//  Created by EarthlyButcher on 2020/10/2.
//

#import "Tea.h"

@implementation Tea

- (void)brew {
    NSLog(@"煮茶");
}

- (void)addCondiments {
    NSLog(@"添加柠檬");
}

- (BOOL)wantCondiments {
    return YES;
}

@end
