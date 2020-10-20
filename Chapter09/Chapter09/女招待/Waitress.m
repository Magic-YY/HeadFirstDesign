//
//  Waitress.m
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#import "Waitress.h"
#import "DinerMenu.h"
#import "MenuItem.h"
#import "IteratorProtocol.h"

@interface Waitress ()

@property (nonatomic, strong) id<MenuProtocol> dinerMenu;

@end

@implementation Waitress

- (instancetype)initWithMenu:(id<MenuProtocol>)menu
{
    self = [super init];
    if (self) {
        self.dinerMenu = menu;
    }
    return self;
}

#pragma mark - public method
- (void)prineMenu {
    id<IteratorProtocol> menuIterator = [self.dinerMenu createIterator];
    [self printMenuWithIterator:menuIterator];
}

#pragma mark - private method
- (void)printMenuWithIterator:(id<IteratorProtocol>)iterator {
    while ([iterator hasNext]) {
        MenuItem *item = (MenuItem *)[iterator next];
        NSLog(@"\nmenu: \nname=%@, \nprice=%.1f, \ndesc-%@", item.getName, item.getPrice, item.getDesc);
    }
}

@end
