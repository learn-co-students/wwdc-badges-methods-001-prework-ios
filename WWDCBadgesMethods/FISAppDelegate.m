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
    NSString *myBadge = [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
    return myBadge;
}
/*
Redefine badgeForSpeaker: to return an interpolated string that includes the speaker's name submitted through the argument, in the manner of Hello, my name is <#speaker#>.. Run the test that checks this method and tweak your method until it the test passes.
*/

-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *myBadges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i=0; i < [speakers count]; i++) {
        NSString *currentBadge = [self badgeForSpeaker:speakers[i]];
        [myBadges addObject:currentBadge];
    }
    return myBadges;
}

/*
 Redefine badgesForSpeakers: to return a mutable array of eight (8) interpolated strings that each read Hello, my name is <#speaker#>., one string for each speaker that will be at the conference. Run the test for this method and tweak your method body until the test passes.
 
 Hint: Use a for loop to iterate over the argument array and, upon each iteration of the loop, add to your mutable array the interpolated string for that speaker's badge.
 
 Advanced: Utilize your badgeForSpeaker: method by calling it on self and supplying it with an argument string pulled from the speakers array.
 
 */

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray*)speakers {
    NSMutableArray *myRoomAssignments = [[NSMutableArray alloc] init];
    
    for (NSUInteger i=0; i < [speakers count]; i++) {
        NSString *speakerGreeting = [NSString stringWithFormat: @"Welcome, %@!  You'll be in dressing room %ld.", speakers[i], ( i + 1 ) ];
        [myRoomAssignments addObject: speakerGreeting];
    }
    return myRoomAssignments;

}

/*
 Redefine the greetingsAndRoomAssignmentsForSpeakers: method to iterate over the speakers argument array and create an interpolated string with each speaker's name and their dressing room number (which range from 1 through 8). The interpolated string should read: Welcome, <#speaker#>! You'll be in dressing room <#roomNumber#>. Add each string to a mutable array. Return the mutable array, then run the test and tweak your method body until the test passes.
 */

@end
