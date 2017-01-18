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

-(NSString *) badgeForSpeaker:(NSString *)speaker {
    
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    NSLog(@"%@", badge);
    
    return badge;
}

-(NSArray *) badgeForSpeakers:(NSArray *)speakers {
    
       NSMutableArray *badges = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        [badges addObject:[self badgeForSpeaker:speakers[i]]];
        
    }
    
    return badges;
    
}

-(NSArray *) greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers {
    
    NSMutableArray *dressingRooms = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        [dressingRooms addObject:[NSString stringWithFormat:@"Welcome %@! You'll be in room %lu",speakers[i], (i+1)]];
        
    }
    
    return dressingRooms;
}

@end
