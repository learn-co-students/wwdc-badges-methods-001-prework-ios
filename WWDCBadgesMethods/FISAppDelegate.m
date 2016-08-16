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


-(NSString *)badgeForSpeaker:(NSString *)speaker {
    return [NSString stringWithFormat:@"Hello, my name is %@.",  speaker ];
}


-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    for (int counter = 0; counter < speakers.count; ++counter) {
        [badges addObject: [self badgeForSpeaker:speakers[counter]]];
    }
//
//    Another way to do it:
    
//  for (NSString* speaker in speakers) {
//        [badges addObject:[self badgeForSpeaker:speaker]];
//    }
//
   return badges;
}


-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray *roomsAndNames = [[NSMutableArray alloc] init];
    
    for (int room = 0; room < speakers.count; ++room) {
        [roomsAndNames addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %i.", speakers[room], room + 1 ]];
    }
//
//    Another way to do it:
//    
//    int room = 0;
//    for (NSString *speaker in speakers){
//        ++room;
//            [roomsAndNames addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %i.", speaker, room]];
//        
//    }

    
    return roomsAndNames;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */
    
@end
