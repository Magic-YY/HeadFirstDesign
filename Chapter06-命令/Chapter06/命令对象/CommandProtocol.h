//
//  CommandProtocol.h
//  Chapter06
//
//  Created by EarthlyButcher on 2020/9/11.
//  Copyright © 2020 yangyun. All rights reserved.
//

#ifndef CommandProtocol_h
#define CommandProtocol_h

@protocol CommandProtocol <NSObject>

@optional

- (void)execute;

///撤销
- (void)undo;

@end


#endif /* CommandProtocol_h */
