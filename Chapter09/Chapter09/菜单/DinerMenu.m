//
//  DinerMenu.m
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#import "DinerMenu.h"
#import "MenuItem.h"
#import "DinerMenuIterator.h"

@interface DinerMenu ()

@property (nonatomic, strong) NSMutableArray *menuItems;

@end

@implementation DinerMenu

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self configData];
    }
    return self;
}

#pragma mark - setup
- (void)configData {
    self.menuItems = [NSMutableArray array];
    [self addItemWithName:@"Vegetarian BLT" desc:@"(Fakin)Bacon with lettuce & tomato on whole wheat" vegetarian:YES price:2.99];
    [self addItemWithName:@"BLT" desc:@"Bacon with lettuce & tomato on whole wheat" vegetarian:NO price:2.99];
    [self addItemWithName:@"Soup of the day" desc:@"Soup of the day, with a sode of potato salad" vegetarian:NO price:3.29];
    [self addItemWithName:@"HotDog" desc:@"A hot dog, with saurkraut, relisjh ,onions, topped with cheese" vegetarian:NO price:3.05];
}

#pragma mark - public method
//- (NSArray *)getMenuItems {
//    return self.menuItems;
//}

#pragma mark - MenuProtocol
- (id)createIterator {
    return [[DinerMenuIterator alloc] initWithMenuItems:self.menuItems];
}

#pragma mark - private method
- (void)addItemWithName:(NSString *)name
                   desc:(NSString *)desc
             vegetarian:(BOOL)vagetarian
                  price:(double)price
{
    MenuItem *item = [[MenuItem alloc] initWithName:name desc:desc vegetarian:vagetarian price:price];
    [self.menuItems addObject:item];
}

@end
