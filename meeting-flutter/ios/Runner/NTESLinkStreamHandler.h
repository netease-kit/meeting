//
//  NTESLinkStreamHandler.h
//  Runner
//
//  Created by He on 2019/10/30.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Flutter/Flutter.h>
NS_ASSUME_NONNULL_BEGIN

@interface NTESLinkStreamHandler : NSObject <FlutterStreamHandler>


- (BOOL)handleLink:(NSString *)link;

@end

NS_ASSUME_NONNULL_END
