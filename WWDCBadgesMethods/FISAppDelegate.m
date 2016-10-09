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
 
     NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
 
     return badge;
 }
 
 
 
 - (NSArray *)badgesForSpeakers:(NSArray *)speakers {
     
     NSMutableArray *totalBadges = [[NSMutableArray alloc] init];
    
     for (NSUInteger i = 0; i < [speakers count]; i++) {
         
         NSString *speaker = [self badgeForSpeaker:speakers[i]];
         
         [totalBadges addObject:speaker];
         
    }
    return totalBadges;
}


- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *guestWithRoomNumber = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSUInteger roomNumber = i + 1;
        
        NSString *greetings = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
        
        [guestWithRoomNumber addObject:greetings];
        
    }
    return guestWithRoomNumber;
}


@end



















































