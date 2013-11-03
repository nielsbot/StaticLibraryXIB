//
//  StaticLibraryWindowController.m
//  test
//
//  Created by Niels Gabel on 11/3/13.
//  Copyright (c) 2013 Niels Gabel. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "StaticLibraryWindowController.h"

@interface NSNib (StaticLibraryWindowController )
+(instancetype)StaticLibraryWindowController ;
@end

@implementation StaticLibraryWindowController

+(instancetype)controller
{
	StaticLibraryWindowController * result = [[[ self class ] alloc ] init ] ;
	[ [ NSNib StaticLibraryWindowController ] instantiateWithOwner:result topLevelObjects:nil ] ;
	
	return result ;
}

@end
