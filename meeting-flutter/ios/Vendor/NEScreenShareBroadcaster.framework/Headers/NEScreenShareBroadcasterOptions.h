//
//  NEScreenShareBroadcasterOptions.h
//  NEScreenShareKit
//
//  Created by Wenchao Ding on 2021/5/12.
//  Copyright © 2021 NetEase. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "NEScreenShareBroadcasterDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface NEScreenShareBroadcasterOptions : NSObject

/// Apple appGroup
@property (nonatomic, copy) NSString *appGroup;

/// 目标视频帧分辨率。
/// @discussion 如果宽和高只设定了一个，则另一个按照比例自动缩放。如果宽高都不设定，则按照原始尺寸。
@property (nonatomic, assign) CGSize targetFrameSize;

@property (nonatomic, weak) id<NEScreenShareBroadcasterDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
