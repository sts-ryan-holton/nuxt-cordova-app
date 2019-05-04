/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#import "APPHiddenStatusbarOverlay.h"

@implementation APPHiddenStatusbarOverlay

#pragma mark -
#pragma mark Interface

/**
 * Hides the application status bar.
 *
 * @return [ Void ]
 */
- (void) hide:(CDVInvokedUrlCommand*)command
{
    [self setStatusBarHidden:YES];
}

/**
 * Shows the application status bar.
 *
 * @return [ Void ]
 */
- (void) show:(CDVInvokedUrlCommand*)command
{
    [self setStatusBarHidden:NO];
}

/**
 * Determines if the status bar is hidden.
 *
 * @param [ Function ] callback A function to be called with the result.
 *
 * @return [ Void ]
 */
- (void) hidden:(CDVInvokedUrlCommand*)command
{
    [self.commandDelegate runInBackground:^{
        UIApplication* app = [UIApplication sharedApplication];
        BOOL isHidden      = app.statusBarHidden;

        CDVPluginResult* result;
        result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                                           messageAsBool:isHidden];

        [self.commandDelegate sendPluginResult:result
                                    callbackId:command.callbackId];
    }];
}

#pragma mark -
#pragma mark Core

/**
 * Set the visibility of the status bar.
 * The core method has been deprecated with iOS@9!
 *
 * @param [ BOOL ] hidden
 *
 * @return [ Void ]
 */
- (void) setStatusBarHidden:(BOOL)hidden
{
    if ([self.app respondsToSelector:@selector(setStatusBarHidden:)]) {
        [self.app setStatusBarHidden:hidden];
    } else {
        NSLog(@"setStatusBarHidden:BOOL has been removed");
    }
}

#pragma mark -
#pragma mark Helper

/**
 * Short hand for shared application instance.
 */
- (UIApplication*) app
{
    return [UIApplication sharedApplication];
}

@end
