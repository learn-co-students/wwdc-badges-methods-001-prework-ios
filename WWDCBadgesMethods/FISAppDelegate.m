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
    
    speaker = @"Inigo Montoya.";
    
    NSString *result = @"";
    
    NSString *intro = @"Hello, my name is ";
    
    result = [intro stringByAppendingString:speaker];
    
    return  result;
    
}



-(NSMutableArray *)badgesForSpeakers : (NSArray *)speaker {
    speaker = @[ @"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    
    NSMutableArray *badges = [speaker mutableCopy];
    
    for (NSUInteger i=0; i< [speaker count]; i++)  {
        
        badges[i] = [@"Hello, my name is " stringByAppendingString:badges[i]];
        
        badges[i] = [badges[i] stringByAppendingString:@"."];
        
    }
    
    return badges;
    
}



-(NSMutableArray *)greetingsAndRoomAssignmentsForSpeakers : (NSArray *)speakers {
    speakers = @[ @"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    
    NSMutableArray *roomAssignments = [speakers mutableCopy];
    
    NSString *roomNumber = @"";
    
    for (NSUInteger i=0; i < [speakers count]; i++)  {
        
        roomAssignments[i] = [@"Welcome, " stringByAppendingString:speakers[i]];
        
        roomAssignments[i] = [roomAssignments[i] stringByAppendingString:@"! You'll be in dressing room " ];
        
        roomNumber = [NSString stringWithFormat:@"%lu", i+1];
        
        roomAssignments[i] = [roomAssignments[i] stringByAppendingString: roomNumber];
        
        roomAssignments[i] = [roomAssignments[i] stringByAppendingString:@"."];
        
        
    }
    
    
    
    return roomAssignments;
    
    
}
// comment

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
