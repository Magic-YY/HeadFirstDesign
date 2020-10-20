//
//  DinerMenuIterator.h
//  Chapter09
//
//  Created by 杨运 on 2020/10/20.
//

#import <Foundation/Foundation.h>
#import "IteratorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DinerMenuIterator : NSObject<IteratorProtocol>

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

- (instancetype)initWithMenuItems:(NSArray *)items;

@end

NS_ASSUME_NONNULL_END
