//
//  FISAppDelegate.h
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/*
 
 * Declare your custom methods in this space. Don't forget to end the statements with semicolons ";" !
 
 */

// Redefine badgeForSpeaker: to return an interpolated string that includes the speaker's name submitted through the argument, in the manner of Hello, my name is <#speaker#>
- (NSString *)badgeForSpeaker: (NSString *)speaker;

// Redefine badgesForSpeakers: to return a mutable array of eight (8) interpolated strings that each read Hello, my name is <#speaker#>., one string for each speaker that will be at the conference.
- (NSArray *)badgesForSpeakers: (NSArray *)speakers;

// Redefine the greetingsAndRoomAssignmentsForSpeakers: method to iterate over the speakers argument array and create an interpolated string with each speaker's name and their dressing room number (which range from 1 through 8). The interpolated string should read: Welcome, <#speaker#>! You'll be in dressing room <#roomNumber#>. Add each string to a mutable array. Return the mutable array.
- (NSArray *)greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers;

@end
