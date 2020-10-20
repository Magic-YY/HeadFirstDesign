//
//  RemoteControl.m
//  Chapter06
//
//  Created by EarthlyButcher on 2020/9/14.
//  Copyright © 2020 yangyun. All rights reserved.
//

#import "RemoteControl.h"

@interface RemoteControl ()

@property (nonatomic,strong) NSMutableArray <id<CommandProtocol>> *onCommands;
@property (nonatomic,strong) NSMutableArray<id<CommandProtocol>> *offCommands;

///记录最后一次调用的命令
@property (nonatomic,strong) id<CommandProtocol> undoCommand;

@end

@implementation RemoteControl


#pragma mark - public method
- (void)setCommand:(NSInteger)slotIndex
         onCommand:(id<CommandProtocol>)onCommand
        offCommand:(id<CommandProtocol>)offCommand
{
    [self.onCommands insertObject:onCommand atIndex:slotIndex];
    [self.offCommands insertObject:offCommand atIndex:slotIndex];
}

- (void)onButtonWasPushed:(NSInteger)slotIndex {
    [[self.onCommands objectAtIndex:slotIndex] execute];
    self.undoCommand = [self.onCommands objectAtIndex:slotIndex];
}

- (void)offButtonWasPushed:(NSInteger)slotIndex {
    [[self.offCommands objectAtIndex:slotIndex] execute];
    self.undoCommand = [self.offCommands objectAtIndex:slotIndex];
}

- (void)undoButtonWasPushed {
    [self.undoCommand undo];
}

#pragma mark - getter / setter
- (NSMutableArray<id<CommandProtocol>> *)onCommands
{
    if (!_onCommands) {
        _onCommands = [NSMutableArray arrayWithCapacity:7];
    }
    return _onCommands;
}

- (NSMutableArray<id<CommandProtocol>> *)offCommands
{
    if (!_offCommands) {
        _offCommands = [NSMutableArray arrayWithCapacity:7];
    }
    return _offCommands;
}

@end
