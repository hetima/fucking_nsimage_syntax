//
//  FNSPageGenerator.h
//  fucking_nsimage_syntax
//
//  Created by hetima on 2014/10/28.
//  Copyright (c) 2014年 hetima. All rights reserved.
//

@import Foundation;
@import AppKit;

@interface FNSPageGenerator : NSObject

@property (nonatomic, strong)NSString* errorString;
@property (nonatomic, strong)NSString* outputDirectory;
@property (nonatomic, strong)NSString* generatorVersion;

- (instancetype)initWithDirectory:(NSString*)path;
- (void)generate;

@end
