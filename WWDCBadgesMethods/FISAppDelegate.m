//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    NSString *hello = @"Hello, my name is";
    NSString *helloMyNameIsSpeaker = [hello stringByAppendingFormat:@" %@.", speaker];
    return helloMyNameIsSpeaker;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *helloMyNameIs = [[NSMutableArray alloc] init];
    NSUInteger arrayLength = [speakers count];

    for (NSUInteger i = 0; i < arrayLength; i++) {
        
        NSUInteger index = i;
        NSString *speaker = [speakers objectAtIndex:index];
        NSString *helloMyNameIsSpeaker = [self badgeForSpeaker:speaker];
        [helloMyNameIs addObject:helloMyNameIsSpeaker];
    }
    
    return helloMyNameIs;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    return nil;
}
@end
