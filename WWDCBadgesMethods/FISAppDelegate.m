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
- (NSString *) badgeForSpeaker: (NSString *)speaker {
    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}
- (NSArray *) badgesForSpeakers: (NSArray *)speakers {
    
    //Create an empty container (NSMutableArray and give it a name, we're calling it newSpeakers)
    NSMutableArray *newSpeakers = [[NSMutableArray alloc] init];
    
    //Beggining for loop over every item in the speakers array (speakers was given to us whoever called on this method).
     for (NSString *speaker in speakers) {
        
        //speakers (which was handed to us) has NSString objects in it.  We want to grab one at a time, do something with it and then store it in a NEW array we made called newSpeakers.  speaker = speakers[i] is grabbing the item from the speakrs array at whatever index i is
        //NSString *speaker = speakers[i];
         
         //newSpeaker is a NEW string we're making which will store whatever is on the other side of the = sign.  The other side of the = sign is a method we made and that we're calling on called badgeForSpeaker:.. if we call on this method, we have to give it something (it wants an NSString object.. so we give it one).  After giving it a NSString object (which in this case is speaker), it will return back something to us.  The thing it returns back to us is a NSString* object.  THAT RETURN is being stored in newSpeaker.
        NSString *newSpeaker = [self badgeForSpeaker:speaker];
         
         //Our newly greated NSString object called newSPeaker is being added to our box/container we created above called newSpeakers
        [newSpeakers addObject:newSpeaker];
    }
    
    return newSpeakers;
}
- (NSArray *) greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers {
    
    //create mutable array to add room assignment strings to
    NSMutableArray *roomAssignments = [[NSMutableArray alloc]init];
    

    for (NSInteger i = 0 ; i < [speakers count] ; i++) {
        
        NSString *speaker = speakers[i];
        NSInteger placeInLine = i + 1;
        NSString *newGreeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speaker, placeInLine];
        
        //creating method to add each room assignment string to roomAssignments mutable array
        [roomAssignments addObject:newGreeting];
    }
    
    
    //creating method to add each room assignment string to roomAssignments mutable array
    
    return roomAssignments;
    
}

// create method, what are they giving you, what do you have to give back
// they are giving you array, you need to give array back
// define array that you need to give back(in this case empty newArray)
// return that newArray
// fill in the in between to make that newArray equal to expected output

//- (NSArray *) greetingsAndRoomAssignmentsFforSpeakers: (NSArray *)speakers {
//    
//    NSMutableArray *newArray = [[NSMutableArray alloc] init];
//    
//    
//    for (NSString *speaker in speakers) {
//        
//        
//        
//    }
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    
//    return newArray;

    
    
}


@end
