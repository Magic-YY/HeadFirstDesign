//
//  Menu.h
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#import <Foundation/Foundation.h>
#import "MenuComponetProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Menu : NSObject<MenuComponetProtocol>

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithName:(NSString *)name
                        desc:(NSString *)desc;

@end

NS_ASSUME_NONNULL_END
