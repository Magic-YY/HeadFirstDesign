//
//  MenuComponetProtocol.h
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#ifndef MenuComponetProtocol_h
#define MenuComponetProtocol_h

@protocol MenuComponetProtocol <NSObject>

@optional

- (void)add:(id<MenuComponetProtocol>)menuComponent;
- (void)remove:(id<MenuComponetProtocol>)menuComponent;
- (id<MenuComponetProtocol>)getChild:(NSInteger)index;

- (NSString *)getName;
- (NSString *)getDesc;
- (BOOL)isVegetarian;
- (double)getPrice;
- (void)print;

@end


#endif /* MenuComponetProtocol_h */
