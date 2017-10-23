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

- (NSString *) badgeForSpeaker:(NSString *)speakers {
    
    NSString *badgeName = [NSString stringWithFormat:@"Hello, my name is %@.", speakers];
    
    return badgeName;
}

- (NSMutableArray *) badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *mArray = [[NSMutableArray alloc] init];
   
    for (NSInteger i = 0; i < 8; i++) {
        
        NSString *badge = [self badgeForSpeaker: speakers[i]];
        
        [mArray addObject:badge];
        
        }
    
    return mArray;
    
}

- (NSMutableArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
  
    NSMutableArray *mArrayGreeting = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < 8; i++) {
        
        int *roomNumber = i + 1;
        
        NSString *name = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.", speakers[i], roomNumber];
        
        [mArrayGreeting addObject:name];
        
    }
    
    return mArrayGreeting ;
}

@end
