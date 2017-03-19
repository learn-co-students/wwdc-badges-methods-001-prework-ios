//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (NSString *)badgeForSpeaker:(NSString *)speaker {
  NSString *inigo = @"Inigo Montoya.";
  
    NSString *hello = @"Hello, my name is";
    NSMutableString *helloMy = [hello mutableCopy];
    
    [helloMy appendFormat:@" %@", inigo];
   
    
    return helloMy;
}

//first Test Check, "Hello, my name is Inigo Montoya"

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
  
    NSMutableArray *mBadgesForSpeakers = [speakers mutableCopy];
    
    
    for (NSUInteger i = 0; i < [mBadgesForSpeakers count]; i++) {
        
        NSString *hello = @"Hello, my name is ";
        NSMutableString *mHello = [hello mutableCopy];
      
        [mHello appendFormat:@"%@.", mBadgesForSpeakers[i]];
        [mBadgesForSpeakers replaceObjectAtIndex:i withObject:mHello];

    }
    
    return mBadgesForSpeakers;
}

//second Test check, "Hello, my name is <#name#>"

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    
    NSMutableArray *mSpeakers = [speakers mutableCopy];
// mSpeakers is a muteable copy of all the names
    
    for (NSUInteger i = 0; i < [mSpeakers count]; i++) {
        
        NSString *welcome = @"Welcome, ";
        NSMutableString *mWelcome = [welcome mutableCopy];
        
        NSArray *room = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8"];
        NSMutableArray *mRoom = [room mutableCopy];
        
        [mWelcome appendFormat:@"%@! You'll be in dressing room", mSpeakers[i]];
        [mWelcome appendFormat:@" %@.", mRoom[i]];
        [mSpeakers replaceObjectAtIndex:i withObject:mWelcome];
       
        
        
    }
    return mSpeakers;
}

//third Test check, "Welcome, <#name#>! You'll be in dressing room <#room number#>."

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

@end
