//
//  Waitress.h
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#import <Foundation/Foundation.h>
#import "MenuProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Waitress : NSObject

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithMenu:(id<MenuProtocol>)menu;

- (void)prineMenu;


@end

NS_ASSUME_NONNULL_END
