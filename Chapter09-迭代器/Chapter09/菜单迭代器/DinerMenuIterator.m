//
//  DinerMenuIterator.m
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#import "DinerMenuIterator.h"
#import "MenuItem.h"

@interface DinerMenuIterator ()

@property (nonatomic, copy) NSArray *menuItems;
@property (nonatomic, assign) NSInteger position;

@end

@implementation DinerMenuIterator

- (instancetype)initWithMenuItems:(NSArray *)items
{
    self = [super init];
    if (self) {
        self.menuItems = items;
        self.position = 0;
    }
    return self;
}

#pragma mark - IteratorProtocol
- (BOOL)hasNext {
    return self.menuItems.count > self.position;
}

- (id)next {
    MenuItem *item = self.menuItems[self.position];
    self.position = self.position + 1;
    return item;
}

@end
