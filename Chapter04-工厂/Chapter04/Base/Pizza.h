//
//  Pizza.h
//  Chapter04
//
//  Created by AreYouOK on 2020/8/9.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject
///子类自己再次定义各自类型
@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *dough;
@property (nonatomic,copy) NSString *sauce;

- (void)prepare;
- (void)bake;
- (void)cut;
- (void)box;

@end

NS_ASSUME_NONNULL_END
