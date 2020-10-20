//
//  Beverage.h
//  Chapter03
//
//  Created by AreYouOK on 2020/8/8.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, BeverageSizeType) {
    BeverageSizeTypeNone,//无效
    BeverageSizeTypeBig,//大杯
    BeverageSizeTypeMiddle,//中杯
    BeverageSizeTypeSmall,//小杯
};

@interface Beverage : NSObject
///物品描述
@property (nonatomic, copy) NSString *descString;
@property (nonatomic, copy) NSString *sizeString;
/**大小杯*/
@property (nonatomic,assign) BeverageSizeType sizeType;
///价格消费
- (double)cost;

@end

NS_ASSUME_NONNULL_END
