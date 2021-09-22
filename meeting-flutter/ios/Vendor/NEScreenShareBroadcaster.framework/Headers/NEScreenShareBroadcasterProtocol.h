//
//  NEScreenShareBroadcasterProtocol.h
//  NEScreenShareKit
//
//  Created by Wenchao Ding on 2021/5/12.
//  Copyright © 2021 NetEase. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMedia/CoreMedia.h>

NS_ASSUME_NONNULL_BEGIN

@protocol NEScreenShareBroadcasterProtocol <NSObject>

/// 暂停时调用
- (void)broadcastPaused;

/// 恢复时调用
- (void)broadcastResumed;

/// 完成时调用
- (void)broadcastFinished;

/// 发送视频帧
- (void)sendVideoSampleBuffer:(CMSampleBufferRef)sampleBuffer;

@end

NS_ASSUME_NONNULL_END
