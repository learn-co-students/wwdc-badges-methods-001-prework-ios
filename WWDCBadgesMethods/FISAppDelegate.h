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

/*Instance methods
 - instance method indicator
 () return type
 * object variables have it
 method name:argument
 */

- (NSString *)badgeForSpeaker:(NSString *)speaker; //accepts one NSString argument named speaker and returns an NSString

- (NSArray *)badgesForSpeakers:(NSArray *)speakers; //accepts one NSArray argument named speakers and returns an NSArray

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers; //accepts one NSArray argument named speakers and returns an NSArray

@end
