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

-(NSString *)badgeForSpeaker:(NSString *)speaker{
    NSString *myBadge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker ];
    return myBadge;//makes a string for each speaker that says "Hello, my name is___"
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers{
    NSMutableArray *myBadges = [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i < [speakers count]; i++){//loops over all speakers
        NSString *individualBadge = [self badgeForSpeaker:speakers[i]];//makes individual badges for each speaker
        [myBadges addObject:individualBadge];//adds each individual badge to a mutable array, creating an array of individual badges for each speaker
    }
    return myBadges;// makes an array of each badge for each speaker that says "Hello, my name is ___"
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray *speakerRooms = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < [speakers count]; i++){//loops over all the speakers
        NSString *individualRoom = [NSString stringWithFormat:@"Welcome, %@!  You'll be in the dressing room %lu.", speakers[i], (i + 1)];//creates a welcome string for each speaker with specific room information
        [speakerRooms addObject: individualRoom];//add each speaker string (with room information) to an array
    }
    return speakerRooms;
    
}


@end
