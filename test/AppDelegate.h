//
//  AppDelegate.h
//  test
//
//  Created by Niels Gabel on 11/3/13.
//  Copyright (c) 2013 Niels Gabel. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property ( nonatomic, strong ) NSWindow * otherWindow ;
@end
