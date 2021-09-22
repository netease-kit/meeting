//
//  NEScreenShareBroadcaster.h
//  NEScreenShareKit
//
//  Created by Wenchao Ding on 2021/5/13.
//  Copyright © 2021 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMedia/CoreMedia.h>
#import "NEScreenShareBroadcasterOptions.h"

//! Project version number for NEScreenShareBroadcaster.
FOUNDATION_EXPORT double NEScreenShareBroadcasterVersionNumber;

//! Project version string for NEScreenShareBroadcaster.
FOUNDATION_EXPORT const unsigned char NEScreenShareBroadcasterVersionString[];

NS_ASSUME_NONNULL_BEGIN

@interface NEScreenShareBroadcaster : NSObject

/// 暂停时调用
- (void)broadcastPaused;

/// 恢复时调用
- (void)broadcastResumed;

/// 完成时调用
- (void)broadcastFinished;

/// 发送视频帧
- (void)sendVideoSampleBuffer:(CMSampleBufferRef)sampleBuffer;

/// 初始化
- (instancetype)initWithOptions:(NEScreenShareBroadcasterOptions *)options;

@end

NS_ASSUME_NONNULL_END
