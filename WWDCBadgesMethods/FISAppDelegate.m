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
- (NSString *) badgeForSpeaker:(NSString *)speaker {
   
    NSMutableString *greeting = [@"Hello, my name is" mutableCopy ];
    
    [greeting appendFormat:@" %@.", speaker];
    NSLog(@"%@", greeting);
    
    return greeting;

    
}


- (NSArray *) badgesForSpeakers:(NSArray *)speakers {
   
    
    NSMutableArray *mSpeakers = [speakers mutableCopy];
    for (NSUInteger i = 0; i < [ mSpeakers count]; i++){
    
        mSpeakers[i] = [self badgeForSpeaker: speakers[i]];
    }
    
    return mSpeakers ;
    
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *mSpeakers = [ speakers mutableCopy];
    for (NSUInteger i = 0; i < [mSpeakers count]; i++){
        NSMutableString *welcome = [@"Welcome, " mutableCopy];
        [ welcome appendFormat: @"%@!", mSpeakers[i]];
        [ welcome appendFormat: @" You'll be in dressing room %lu.", i + 1 ];

        mSpeakers[i] = welcome;
    }
    
    return mSpeakers;
    
}
@end
