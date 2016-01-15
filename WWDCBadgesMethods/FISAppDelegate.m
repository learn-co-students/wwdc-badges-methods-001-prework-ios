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

//speakers = ["Adele Goldberg", "Edsger"]
-(NSString *)badgeForSpeaker:(NSString *)speaker{
    
    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    //NSMutableString *badge = [[NSMutableString alloc] init];
    //[badge appendFormat:@"Hello, my name is %@.", speaker];
    //return badge;
};

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    //initialize empty NSMutable array to create badges array variable
   // NSMutableArray *badges = [NSMutableArray array]; OR
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSString *badgeNew =  [self badgeForSpeaker:speakers[i]]; //speakers[i] is a NSString object in the speakers array
        [badges addObject:badgeNew];
    }
    return badges; //return of NSString objects are now all stored in badges array
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *WelcomeRoomAssignments = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSUInteger roomNumber = i+1;
        NSMutableString *welcome = [[NSMutableString alloc] init];
        
        [welcome appendFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
        [WelcomeRoomAssignments addObject:welcome];
        
        //method that adds each welcomeRoomAssignment string to the mutable array
        //room number is i+1 because i starts at 0.
    }
    
    return WelcomeRoomAssignments;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
