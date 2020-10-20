//
//  TurkeyAdapter.m
//  Capture07
//
//  Created by EarthlyButcher on 2020/9/23.
//

#import "TurkeyAdapter.h"

@interface TurkeyAdapter ()
@property (nonatomic,strong) id<TurkeyProtocol> turkey;
@end

@implementation TurkeyAdapter

- (id<DuckProtocol>)initWithTurkey:(id<TurkeyProtocol>)turkey
{
    self = [super init];
    if (self) {
        self.turkey = turkey;
    }
    return self;
}

#pragma mark - DuckProtocol
- (void)quack {
    [self.turkey gobble];
}

- (void)fly {
    for (int i = 0; i <= 5; i++) {
        [self.turkey fly];
    }
}

@end
