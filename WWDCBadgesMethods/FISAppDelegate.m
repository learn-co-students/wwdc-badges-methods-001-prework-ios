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

-(NSString *)badgeForSpeaker:(NSString *)speaker {
    

    
    NSString *greeting = @"Hello, my name is ";
    greeting = [greeting stringByAppendingFormat:@"%@.", speaker];

    return greeting;
}



// define a method for ohters to use
-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
 
    // Result array, you have to return it at the end of the method
    NSMutableArray *badgeWithName = [[NSMutableArray alloc] init];
    
    // Loop for each element in the speakers
    for (NSUInteger i =0; i < [speakers count]; i++) {
        
        // The element will be put inside the result array
        NSString *greetingWithName = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];

//        NSString *advanced = [self badgeForSpeaker:speakers[i]];
        
        // the action of putting the element into the result array
        [badgeWithName addObject: greetingWithName];
    }
    
    // return the result array
    return badgeWithName;
}


-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badgesWithNamesAndRooms = [[NSMutableArray alloc] init];
    
    
    for (NSUInteger i=0; i < [speakers count]; i++) {
        NSString *newGreeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.", speakers[i], i+1];
        [badgesWithNamesAndRooms addObject: newGreeting];
    }
    
    return badgesWithNamesAndRooms;
}

@end

