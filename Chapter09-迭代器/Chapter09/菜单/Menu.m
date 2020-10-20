//
//  Menu.m
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#import "Menu.h"

@interface Menu ()

@property (nonatomic, strong) NSMutableArray *menuComponents;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *desc;

@end

@implementation Menu

- (instancetype)initWithName:(NSString *)name
                        desc:(NSString *)desc
{
    self = [super init];
    if (self) {
        self.name = name;
        self.desc = desc;
        self.menuComponents = [NSMutableArray array];
    }
    return self;
}

#pragma mark - MenuComponetProtocol
- (void)add:(id<MenuComponetProtocol>)menuComponent {
    [self.menuComponents addObject:menuComponent];
}

- (void)remove:(id<MenuComponetProtocol>)menuComponent {
    [self.menuComponents removeObject:menuComponent];
}

- (id<MenuComponetProtocol>)getChild:(NSInteger)index {
    return self.menuComponents[index];
}

- (NSString *)getName {
    return self.name;
}

- (NSString *)getDesc {
    return self.desc;
}

- (void)print {
    NSLog(@"Menu: name=%@, desc=%@", [self getName], [self getDesc]);
}

@end
