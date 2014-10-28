//
//  FNSPageGenerator.m
//  fucking_nsimage_syntax
//
//  Created by hetima on 2014/10/28.
//  Copyright (c) 2014年 hetima. All rights reserved.
//

#import "FNSPageGenerator.h"

@implementation FNSPageGenerator


- (instancetype)initWithDirectory:(NSString*)path
{
    self = [super init];
    if (self) {
        _outputDirectory=path;
        _errorString=nil;
        _generatorVersion=@"20141028";
        BOOL isDir;
        if ([[NSFileManager defaultManager]fileExistsAtPath:path isDirectory:&isDir]) {
            if (!isDir) {
                _errorString=@"file exists at output destination.";
            }
        }else{
            if(![[NSFileManager defaultManager]createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:nil]){
                _errorString=@"couldn't create output directory.";
            }
        }
    }
    return self;
}


+ (NSArray*)hiddenNames
{
    NSArray* result=
    @[
        @"NSMenuOnStateTemplate",
        @"NSMenuMixedStateTemplate",
        @"NSStatusAvailableFlat",
        @"NSStatusPartiallyAvailableFlat",
        @"NSStatusUnavailableFlat",
        @"NSStatusNoneFlat",
        @"NSScriptTemplate",
        @"NSPlayTemplate",
        @"NSPauseTemplate",
        @"NSRecordStartTemplate",
        @"NSRecordStopTemplate",
        @"NSRewindTemplate",
        @"NSFastForwardTemplate",
        @"NSSkipAheadTemplate",
        @"NSSkipBackTemplate",
        @"NSPrivateArrowNextTemplate",
        @"NSPrivateArrowPreviousTemplate",
        @"NSPrivateChaptersTemplate",
        @"NSAudioOutputMuteTemplate",
        @"NSAudioOutputVolumeOffTemplate",
        @"NSAudioOutputVolumeLowTemplate",
        @"NSAudioOutputVolumeMedTemplate",
        @"NSAudioOutputVolumeHighTemplate",
        @"NSDropDownIndicatorTemplate",
        @"NSToolbarBookmarks",
        @"NSToolbarMoreTemplate",
        @"NSSecurity",
        @"NSSynchronize",
        @"NSAddBookmarkTemplate",
        @"NSStatusIdle",
        @"NSStatusAway",
        @"NSStatusOffline",  //blank image
        @"NSStatusUnknown",
        
        //@"NSMoveSplitterUpTemplate", //blank image
        //@"NSMoveSpliterDownTemplate", //not found
        //@"NSMoveSplitterLeftTemplate", //blank image
        //@"NSMoveSplitterRightTemplate", //blank image
        @"NSChildContainerEmptyTemplate",
        @"NSChildContainerTemplate",
        
        @"NSMediaBrowserMediaTypeAudioTemplate",
        @"NSMediaBrowserMediaTypeAudioTemplate32",
        @"NSMediaBrowserMediaTypePhotosTemplate",
        @"NSMediaBrowserMediaTypePhotosTemplate32",
        @"NSMediaBrowserMediaTypeMoviesTemplate",
        @"NSMediaBrowserMediaTypeMoviesTemplate32",
        @"NSTitlebarExitFullScreenTemplate",
        @"NSTitlebarEnterFullScreenTemplate",
        
        @"NSGoRightSmall",
        @"NSGoLeftSmall",
        @"",
        @"",
        @"",
        @"",
        @"",
        @"",
    ];

    return result;
}


+ (NSDictionary*)publicNames
{
    NSDictionary* result=
    @{
      NSImageNameQuickLookTemplate: @"NSImageNameQuickLookTemplate",
      NSImageNameBluetoothTemplate: @"NSImageNameBluetoothTemplate",
      NSImageNameIChatTheaterTemplate: @"NSImageNameIChatTheaterTemplate",
      NSImageNameSlideshowTemplate: @"NSImageNameSlideshowTemplate",
      NSImageNameActionTemplate: @"NSImageNameActionTemplate",
      NSImageNameSmartBadgeTemplate: @"NSImageNameSmartBadgeTemplate",
      NSImageNameIconViewTemplate: @"NSImageNameIconViewTemplate",
      NSImageNameListViewTemplate: @"NSImageNameListViewTemplate",
      NSImageNameColumnViewTemplate: @"NSImageNameColumnViewTemplate",
      NSImageNameFlowViewTemplate: @"NSImageNameFlowViewTemplate",
      NSImageNamePathTemplate: @"NSImageNamePathTemplate",
      NSImageNameInvalidDataFreestandingTemplate: @"NSImageNameInvalidDataFreestandingTemplate",
      NSImageNameLockLockedTemplate: @"NSImageNameLockLockedTemplate",
      NSImageNameLockUnlockedTemplate: @"NSImageNameLockUnlockedTemplate",
      NSImageNameGoRightTemplate: @"NSImageNameGoRightTemplate",
      NSImageNameGoLeftTemplate: @"NSImageNameGoLeftTemplate",
      
      NSImageNameRightFacingTriangleTemplate: @"NSImageNameRightFacingTriangleTemplate",
      NSImageNameLeftFacingTriangleTemplate: @"NSImageNameLeftFacingTriangleTemplate",
      
      NSImageNameAddTemplate: @"NSImageNameAddTemplate",
      NSImageNameRemoveTemplate: @"NSImageNameRemoveTemplate",
      NSImageNameRevealFreestandingTemplate: @"NSImageNameRevealFreestandingTemplate",
      NSImageNameFollowLinkFreestandingTemplate: @"NSImageNameFollowLinkFreestandingTemplate",
      NSImageNameEnterFullScreenTemplate: @"NSImageNameEnterFullScreenTemplate",
      NSImageNameExitFullScreenTemplate: @"NSImageNameExitFullScreenTemplate",
      NSImageNameStopProgressTemplate: @"NSImageNameStopProgressTemplate",
      NSImageNameStopProgressFreestandingTemplate: @"NSImageNameStopProgressFreestandingTemplate",
      NSImageNameRefreshTemplate: @"NSImageNameRefreshTemplate",
      NSImageNameRefreshFreestandingTemplate: @"NSImageNameRefreshFreestandingTemplate",
      
      NSImageNameBonjour: @"NSImageNameBonjour",
      NSImageNameComputer: @"NSImageNameComputer",
      NSImageNameFolderBurnable: @"NSImageNameFolderBurnable",
      NSImageNameFolderSmart: @"NSImageNameFolderSmart",
      NSImageNameFolder: @"NSImageNameFolder",
      NSImageNameNetwork: @"NSImageNameNetwork",
      
      NSImageNameMobileMe: @"NSImageNameMobileMe",
      
      NSImageNameMultipleDocuments: @"NSImageNameMultipleDocuments",
      
      NSImageNameUserAccounts: @"NSImageNameUserAccounts",
      NSImageNamePreferencesGeneral: @"NSImageNamePreferencesGeneral",
      NSImageNameAdvanced: @"NSImageNameAdvanced",
      
      NSImageNameInfo: @"NSImageNameInfo",
      NSImageNameFontPanel: @"NSImageNameFontPanel",
      NSImageNameColorPanel: @"NSImageNameColorPanel",
      
      NSImageNameUser: @"NSImageNameUser",
      NSImageNameUserGroup: @"NSImageNameUserGroup",
      NSImageNameEveryone: @"NSImageNameEveryone",
      NSImageNameUserGuest: @"NSImageNameUserGuest",
      
      NSImageNameMenuOnStateTemplate: @"NSImageNameMenuOnStateTemplate",
      NSImageNameMenuMixedStateTemplate: @"NSImageNameMenuMixedStateTemplate",

      NSImageNameApplicationIcon: @"NSImageNameApplicationIcon",
      
      NSImageNameTrashEmpty: @"NSImageNameTrashEmpty",
      NSImageNameTrashFull: @"NSImageNameTrashFull",
      NSImageNameHomeTemplate: @"NSImageNameHomeTemplate",
      NSImageNameBookmarksTemplate: @"NSImageNameBookmarksTemplate",
      NSImageNameCaution: @"NSImageNameCaution",
      NSImageNameStatusAvailable: @"NSImageNameStatusAvailable",
      NSImageNameStatusPartiallyAvailable: @"NSImageNameStatusPartiallyAvailable",
      NSImageNameStatusUnavailable: @"NSImageNameStatusUnavailable",
      NSImageNameStatusNone: @"NSImageNameStatusNone",
      
      NSImageNameShareTemplate: @"NSImageNameShareTemplate",
      };

    return result;
}


-(NSString*)generateImageFileNamed:(NSString*)name
{
    if ([name length]<=0) {
        return nil;
    }
    
    NSImage* image=[NSImage imageNamed:name];
    if (!image){
        NSLog(@"\"%@\" not found", name);
        return nil;
    }
    
    NSString* fileName=[name stringByAppendingPathExtension:@"png"];
    NSString* path=[self.outputDirectory stringByAppendingPathComponent:fileName];
    
    // from stackoverflow.com/questions/17507170/how-to-save-png-file-from-nsimage-retina-issues
    CGImageRef cgRef = [image CGImageForProposedRect:NULL context:nil hints:nil];
    NSBitmapImageRep *newRep = [[NSBitmapImageRep alloc] initWithCGImage:cgRef];
    [newRep setSize:[image size]];   // if you want the same resolution
    NSData *pngData = [newRep representationUsingType:NSPNGFileType properties:nil];
    if([pngData writeToFile:path atomically:YES]){
        return fileName;
    }
    
    return nil;
}


-(NSString*)generatePublicNames
{
    NSMutableString* result=[[NSMutableString alloc]init];
    NSDictionary* names=[FNSPageGenerator publicNames];
    NSArray* keys=[[names allKeys]sortedArrayUsingSelector:@selector(compare:)];
    
    [result appendString:@"<h2>Public Images</h2>"];
    [result appendString:@"<table class=\"pure-table pure-table-bordered\"><thead><tr><th>image</th><th>name</th><th>raw value</th></tr></thead><tbody>\n"];
    
    for (NSString* key in keys) {
        NSString* value=names[key];
        NSString* fileName=[self generateImageFileNamed:key];
        if (fileName) {
            [result appendFormat:@"<tr><td><img class=\"pure-img\" src=\"%@\"></td><td>%@</td><td>@\"%@\"</td></tr>\n", fileName, value, key];
        }
    }
    
    [result appendString:@"</tbody></table>\n"];
    return result;
}

-(NSString*)generateHiddenNames
{
    NSMutableString* result=[[NSMutableString alloc]init];
    NSArray* keys=[[FNSPageGenerator hiddenNames]sortedArrayUsingSelector:@selector(compare:)];
    
    [result appendString:@"<h2>Undocumented Images</h2>"];
    [result appendString:@"<table class=\"pure-table pure-table-bordered\"><thead><tr><th>image</th><th>raw value</th></tr></thead><tbody>\n"];
    
    for (NSString* key in keys) {
        NSString* fileName=[self generateImageFileNamed:key];
        if (fileName) {
            [result appendFormat:@"<tr><td><img class=\"pure-img\" src=\"%@\"></td><td>@\"%@\"</td></tr>\n", fileName, key];
        }
    }
    [result appendString:@"</tbody></table>\n"];
    
    return result;
}


- (void)generate
{
    NSMutableString* result=[[NSMutableString alloc]init];
    [result appendString:@"<!DOCTYPE html><html><head><meta charset=\"utf-8\"><title>Fucking NSImage Syntax</title>\n"];
    [result appendString:@"<link rel=\"stylesheet\" href=\"http://yui.yahooapis.com/pure/0.5.0/pure-min.css\">\n"];
    [result appendString:@"</head><body><div class=\"content\" style=\"margin:48px;\">"];
    [result appendString:@"<h1>Fucking NSImage Syntax</h1>"];
    
    [result appendString:[self generatePublicNames]];
    [result appendString:[self generateHiddenNames]];
    [result appendFormat:@"<p style=\"color:#aaa;\">generated by fucking_nsimage_syntax ver.%@</p>", self.generatorVersion];
    [result appendString:@"</div></body></html>"];
    
    NSString* filePath=[self.outputDirectory stringByAppendingPathComponent:@"index.html"];
    [result writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
}


@end
