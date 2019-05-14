//
//  AppDelegate.m
//  MacDependency
//
//  Created by Yuze Jiang on 5/13/19.
//  Copyright © 2019 Konrad Windszus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#import "MyDocument.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {}

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
  [NSDocumentController.sharedDocumentController openDocument: nil];
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)sender hasVisibleWindows:(BOOL)flag {
  if (flag)
    return NO;
  [NSDocumentController.sharedDocumentController openDocument: nil];
  return YES;
}

@end
