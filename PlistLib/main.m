//
//  main.m
//  PlistLib
//
//  Created by mono on 9/23/13.
//  Copyright (c) 2013 mono. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *filePath = [NSString stringWithUTF8String:argv[1]];
        NSString* key = [NSString stringWithUTF8String:argv[2]];
        NSString* value = [NSString stringWithUTF8String:argv[3]];
        
        NSMutableDictionary* plistDict = [[NSDictionary alloc] initWithContentsOfFile:filePath].mutableCopy;
        NSString* originalCFBundleDisplayName = plistDict[key];
        NSLog(@"filePath: %@. key: %@ ( %@ + %@ )", filePath, key, originalCFBundleDisplayName, value);
        plistDict[key] = [originalCFBundleDisplayName stringByAppendingString:value];
        [plistDict writeToFile:filePath atomically:YES];
    }
    return 0;
}

