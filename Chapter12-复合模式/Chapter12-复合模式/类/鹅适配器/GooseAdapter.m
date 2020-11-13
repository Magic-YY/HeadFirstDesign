//
//  GooseAdapter.m
//  Chapter12-复合模式
//
//  Created by 杨运 on 2020/11/12.
//

#import "GooseAdapter.h"

@interface GooseAdapter ()

@property (nonatomic, strong) Goose *goose;

@end

@implementation GooseAdapter

- (instancetype)initWithGoose:(Goose *)goose
{
    self = [super init];
    if (self) {
        self.goose = goose;
    }
    return self;
}

#pragma mark - QuackableProtocol
- (void)quack {
    [self.goose honk];
}

@end
