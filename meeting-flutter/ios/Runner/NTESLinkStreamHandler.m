//
//  NTESLinkStreamHandler.m
//  Runner
//
//  Created by He on 2019/10/30.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "NTESLinkStreamHandler.h"

@interface NTESLinkStreamHandler ()

@property (nonatomic,strong)FlutterEventSink  eventSink;

@property (nonatomic,strong) NSMutableArray * queuedLinks;

@end

@implementation NTESLinkStreamHandler

- (BOOL)handleLink:(NSString *)link {
    if (!self.eventSink) {
        [self.queuedLinks addObject:link];
        return NO;
    }
    
    self.eventSink(link);
    return YES;
}

- (FlutterError *)onCancelWithArguments:(id)arguments {
    self.eventSink = nil;
    return nil;
}

- (FlutterError *)onListenWithArguments:(id)arguments
                              eventSink:(FlutterEventSink)events {
    
    self.eventSink = events;
    for (NSString * link in self.queuedLinks) {
        events(link);
    }
    return nil;
}

- (NSMutableArray *)queuedLinks {
    if (!_queuedLinks) {
        _queuedLinks = [NSMutableArray array];
    }
    return _queuedLinks;
}

@end
