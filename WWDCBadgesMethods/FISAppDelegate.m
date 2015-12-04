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
- (NSString *) badgeForSpeaker: (NSString *)speaker; {
    
    NSString *coma = @".";
    NSMutableString *mName = [@"Hello, my name is" mutableCopy];
    [mName appendString:@"Adele Goldberg"];
    [mName appendString:@"Edsger Dijkstra"];
    [mName appendString:@"Joan Clarke"];
    [mName appendString:@"Clarence Ellis"];
    [mName appendString:@"Margaret Hamilton"];
    [mName appendString:@"George Boole"];
    [mName appendString:@"Tim Berners-Lee"];
    [mName appendString:@"Jean Bartik"];
    
    NSLog(@"%@ : %@", mName, coma);
    return nil;}

- (NSArray *) badgesForSpeakers: (NSArray *)speakers; {
    
NSArray *names = @[ @"Adele Goldberg",
                    @"Edsger Dijkstra",
                    @"Joan Clarke",
                    @"Clarence Ellis",
                    @"Margaret Hamilton",
                    @"George Boole",
                    @"Tim Berners-Lee",
                    @"Jean Bartik"       ];
NSMutableArray *mNames = [names mutableCopy];
for (NSUInteger i = 0 ; i < [names count]; i ++){
    
NSLog(@"Hello, my name is %@.", names[i] );
    return nil;}
    
    - (NSArray *) greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers; {
        
            NSArray *rooms = @[ @"1",
                                @"2",
                                @"3",
                                @"4",
                                @"5",
                                @"6",
                                @"7",
                                @"8"       ];
        
        NSMutableArray *mRooms = [rooms mutableCopy];
        NSMutableString *assignmentsForSpeakers = [@"You'll be in dressing room" mutableCopy];
        [assignmentsForSpeakers appendFormat:@" %@", mRooms];
        NSLog((@"%@", assignmentsForSpeakers)
        
              return nil;}
}
@end
