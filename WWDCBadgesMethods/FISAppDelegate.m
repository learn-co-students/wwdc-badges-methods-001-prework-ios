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


-(NSString*)badgeForSpeaker:(NSString*)speaker;{
    NSMutableString *hello= [@"Hello, my name is" mutableCopy];
    [hello appendFormat:@" %@.", speaker];
    return hello;
        
    }
   

-(NSArray*)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *helloArray = [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i<[speakers count];i++) {
        helloArray[i]=[self badgeForSpeaker:speakers[i]];
    }
    return helloArray;
}

-(NSMutableArray*)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray*greetingsandRoomArray= [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i<[speakers count]; i++) {
    NSMutableString *greetingsAndRoomsString= [@"Welcome, " mutableCopy];
        [greetingsAndRoomsString appendFormat:@"%@! You'll be in dressing room %lu.", speakers[i], i+1];
        greetingsandRoomArray[i]=greetingsAndRoomsString;
    }
    return greetingsandRoomArray;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
