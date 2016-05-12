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

- (NSString *)badgeForSpeaker:(NSString *)speaker; {
    
    NSMutableString *hello = [@"Hello, my name is" mutableCopy];
    
    NSMutableString *mSpeaker = [speaker mutableCopy];
    
    [hello appendFormat:@" %@.", mSpeaker];
    
 //   NSLog(@"\n\n\n\n %@ %@.", hello, mSpeaker);
    
    return hello;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers; {
    
    NSMutableArray *mSpeakers = [speakers copy];
    
    NSMutableArray *mute = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSString *hello = [self badgeForSpeaker:mSpeakers[i]];
        
        [mute addObject:hello];

    }
    return mute;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers; {
    
    NSMutableArray *finalBadge = [[NSMutableArray alloc] init];
//Tests require to return a Mutable Array.
    
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
      
        NSUInteger roomNumber = i + 1;
//Had to add this NSUInteger, since index begins at 0, the first Room Numebr being printed originally was 0.
        
        NSString *finalBadges = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
//Note the change in format specifier to differentiate the speaker names from the room numbers.
        
        [finalBadge addObject:finalBadges];
        
    }
    
    return finalBadge;
}

@end
