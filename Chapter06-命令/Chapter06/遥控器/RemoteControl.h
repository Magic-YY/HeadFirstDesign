//
//  RemoteControl.h
//  Chapter06
//
//  Created by EarthlyButcher on 2020/9/14.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface RemoteControl : NSObject

- (void)setCommand:(NSInteger)slotIndex
         onCommand:(id<CommandProtocol>)onCommand
        offCommand:(id<CommandProtocol>)offCommand;

- (void)onButtonWasPushed:(NSInteger)slotIndex;

- (void)offButtonWasPushed:(NSInteger)slotIndex;

- (void)undoButtonWasPushed;

@end

NS_ASSUME_NONNULL_END
