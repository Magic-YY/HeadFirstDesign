//
//  IteratorProtocol.h
//  Chapter09
//
//  Created by EarthlyButcher on 2020/10/4.
//

#ifndef IteratorProtocol_h
#define IteratorProtocol_h

@protocol IteratorProtocol <NSObject>

- (BOOL)hasNext;
- (id)next;

@end

#endif /* IteratorProtocol_h */
