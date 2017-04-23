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
    
    NSString *speaker = @"Inigo Montoya";
    NSString *badge = [self badgeForSpeaker:speaker];
    NSLog(@"%@", badge);
    
    
    NSMutableArray *conferenceSpeakers = [[NSMutableArray alloc] init];
    NSArray *hello = [self badgesForSpeakers:conferenceSpeakers];
    NSLog(@"%@", hello);
    
    
    NSMutableArray *conferenceRooms = [[NSMutableArray alloc] init];
    NSArray *announcement = [self greetingsAndRoomAssignmentsForSpeakers: conferenceRooms];
    NSLog(@"%@", announcement);
    
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker;{
    
    NSString *name = [speaker copy];
    
    NSString *greeting = [NSString stringWithFormat:@"Hello, my name is %@.", name];
    
    return greeting;
    
}

-(NSMutableArray *)badgesForSpeakers:(NSArray *)speakers; {
    
    speakers = @[ @"Adele Goldberg",  @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    
    NSMutableArray *conferenceSpeakers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSString *greeting = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        
        [conferenceSpeakers insertObject:greeting atIndex:i];
        
    }
    
    return conferenceSpeakers;
    
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers;{
    
    speakers = @[ @"Adele Goldberg",  @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    
    NSMutableArray *conferenceRooms = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSUInteger roomNumber = i + 1;
        
        NSString *greeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
        
        [conferenceRooms insertObject:greeting atIndex:i];
        
    }
    
    return conferenceRooms;
    
}

@end