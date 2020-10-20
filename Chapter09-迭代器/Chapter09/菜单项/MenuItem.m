//
//  MenuItem.m
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#import "MenuItem.h"

@interface MenuItem ()

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, assign) BOOL vegetarian;
@property (nonatomic, assign) double price;


@end

@implementation MenuItem

- (instancetype)initWithName:(NSString *)name
                        desc:(NSString *)desc
                  vegetarian:(BOOL)vegetarian
                       price:(double)price
{
    self = [super init];
    if (self) {
        self.name = name;
        self.desc = desc;
        self.vegetarian = vegetarian;
        self.price = price;
    }
    return self;
}

#pragma mark - MenuComponetProtocol
- (NSString *)getName {
    return self.name;
}

- (NSString *)getDesc {
    return self.desc;
}

- (BOOL)isVegetarian {
    return self.vegetarian;
}

- (double)getPrice {
    return self.price;
}

- (void)print {
    if ([self isVegetarian]) {
        NSLog(@"\nisVagetatian");
    }
    NSLog(@"\nmenu: \nname=%@, \nprice=%.1f, \ndesc-%@", [self getName], [self getPrice], [self getDesc]);
}

@end
