//
//  MenuItem.h
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#import <Foundation/Foundation.h>
#import "MenuComponetProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MenuItem : NSObject<MenuComponetProtocol>

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithName:(NSString *)name
                        desc:(NSString *)desc
                  vegetarian:(BOOL)vegetarian
                       price:(double)price;

@end

NS_ASSUME_NONNULL_END
