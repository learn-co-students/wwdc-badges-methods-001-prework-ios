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
    NSString *badge = [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
    return badge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSArray *speakerList = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    NSMutableArray *mspeakerList = [speakerList mutableCopy];
    //NSString *badges = @"";
    for (NSUInteger i = 0; i < [speakerList count]; i++) {
        NSString *badges = [NSString stringWithFormat:@"Hello, My name is %@.", speakerList[i]];
        [mspeakerList insertObject:badges atIndex:i];
    }
    return mspeakerList;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
   speakers = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    NSMutableArray *mRooms = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < [speakers count]; i++) {
        NSUInteger room = i + 1;
        NSString *welcomAndRoom = [NSString stringWithFormat:@"@Welcome, %@. You'll be in dressing room %lu.", speakers[i],room];
        [mRooms insertObject:welcomAndRoom atIndex:i];
    }
    
    return mRooms;
}



@end
