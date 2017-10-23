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

- (NSString *)badgeForSpeaker:(NSString *)speaker{
    NSString *speakerBadge = @"";
    speakerBadge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return speakerBadge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers{
    NSMutableArray *badgeArray = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *processedBadge = @"";
        processedBadge = speakers [i];
        processedBadge = [self badgeForSpeaker:processedBadge];
        
        [badgeArray addObject:processedBadge];
        }
    
    return badgeArray;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
   NSMutableArray *greetingsAndRoomAssignments = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *speakerNeedsRoom = speakers [i];
        NSUInteger dressingRoom = i + 1;
        NSString *Welcome = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakerNeedsRoom, dressingRoom];
        
        [greetingsAndRoomAssignments addObject:Welcome];
        
    }
    
         return greetingsAndRoomAssignments;
}

@end
