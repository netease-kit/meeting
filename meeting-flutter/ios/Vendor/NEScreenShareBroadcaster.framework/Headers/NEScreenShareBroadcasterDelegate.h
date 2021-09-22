//
//  NEScreenShareBroadcasterDelegate.h
//  NEScreenShareBroadcaster
//
//  Created by 李成达 on 2021/5/19.
//

#ifndef NEScreenShareBroadcasterDelegate_h
#define NEScreenShareBroadcasterDelegate_h

@protocol NEScreenShareBroadcasterDelegate <NSObject>

/// 宿主APP请求结束屏幕共享
///
- (void)onHostRequestFinishBroadcast;

@end


#endif /* NEScreenShareBroadcasterDelegate_h */
