//
//  main.m
//  TestApp
//
//  Created by Stephen Blackheath on 11/04/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

void (*drawFrame)(void);

void c_main(void (*_drawFrame)(void)) {
    int argc_ = 1;
    char* argv_[2];
    printf("c_main\n");
    drawFrame = _drawFrame;
    printf("c_main continues...\n");
    argv_[0] = "dummy";
    argv_[1] = "";
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    UIApplicationMain(argc_, argv_, nil, nil);
    [pool release];
}
