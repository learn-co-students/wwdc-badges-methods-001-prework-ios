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
   
    
    NSMutableString * hello = [@"Hello, my name is" mutableCopy];
    
    [hello appendFormat:@" %@.", speaker];
    
    
    return hello;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    
        NSMutableArray *badges = [NSMutableArray array];
        for (NSString* speaker in speakers)
        {
            NSString *greeting = [NSString stringWithFormat:@"Hello, my name is %@.",speaker];
            [badges addObject:greeting];
        }
        return badges;
    }
    


- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSArray * numbers;
    
    
    numbers = [NSArray arrayWithObjects:@"1", @"2",@"3", @"4", @"5", @"6", @"7", @"8", nil];
    
      NSMutableArray *rooms = [NSMutableArray array];
    
    
    
    for (NSUInteger i = 0; i < 8; i++)
        
        
    {
        
        
        NSString *room = [NSString stringWithFormat:@"Welcome, %@! " @"You'll be in dressing room %@.",speakers[i], numbers[i]];
        
      
        
        
        
          [rooms addObject:room];

        
    }
    
    
    
    
    
    return rooms;
}





@end
