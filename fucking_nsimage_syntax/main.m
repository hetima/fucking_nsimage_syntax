//
//  main.m
//  fucking_nsimage_syntax
//
//  Created by hetima on 2014/10/28.
//  Copyright (c) 2014年 hetima. All rights reserved.
//

@import Foundation;

#import "FNSPageGenerator.h"

NSString* generatePublicNames();
NSDictionary* publicNames();

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString* path=[[[NSFileManager defaultManager]currentDirectoryPath]stringByAppendingPathComponent:@"fucking_nsimage_syntax_output"];
        FNSPageGenerator* generator=[[FNSPageGenerator alloc]initWithDirectory:path];
        if (generator.errorString) {
            NSLog(@"Error: %@", generator.errorString);
        }else{
            [generator generate];
        }
    }
    return 0;
}

