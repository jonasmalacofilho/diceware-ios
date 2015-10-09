//
//  main.m
//  SingleViewTest
//
//  Created by Jonas Malaco Filho on 10/8/15.
//  Copyright © 2015 Elebeta. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSLog(@"delegate name: %@", NSStringFromClass([AppDelegate class]));
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
