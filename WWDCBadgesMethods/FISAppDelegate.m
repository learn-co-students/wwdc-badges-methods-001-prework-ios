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

    
    NSMutableArray *mSpeakers = [[NSMutableArray alloc] init];
    NSArray *hello = [self badgesForSpeakers:mSpeakers];
    NSLog(@"%@", hello);
    
    
    NSMutableArray *mRooms = [[NSMutableArray alloc] init];
    NSArray *announcement = [self greetingsAndRoomAssignmentsForSpeakers: mRooms];
    NSLog(@"%@", announcement);
    
    
    
    
    
    
    
    return YES;
}











- (NSString *)badgeForSpeaker:(NSString *)speaker;{
    
    NSString *name = [speaker copy];
    
    NSString *greeting = [NSString stringWithFormat:@"Hello, my name is %@.", name];
    
    return greeting;
    
    /*
     NSMutableString *greeting = [[NSMutableString alloc] init];
     
     [greeting appendString:@"Hello, my name is "];
     [greeting appendString:name];
     [greeting appendString:@"."];
     
     return greeting;
     */
    
}



-(NSMutableArray *)badgesForSpeakers:(NSArray *)speakers; {
    
    speakers = @[ @"Adele Goldberg",  @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    
    NSMutableArray *mSpeakers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSString *greeting = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        
        [mSpeakers insertObject:greeting atIndex:i];
        
    }
    
    return mSpeakers;
    
    }



-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers;{
    
    speakers = @[ @"Adele Goldberg",  @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    
    NSMutableArray *mRooms = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSUInteger roomNumber = i + 1;
        
        NSString *greeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
        
        [mRooms insertObject:greeting atIndex:i];
        
    }
    
    return mRooms;
    
}

@end
