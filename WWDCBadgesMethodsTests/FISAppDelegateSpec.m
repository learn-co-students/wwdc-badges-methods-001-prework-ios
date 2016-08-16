//
//  FISAppDelegateSpec.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright 2014 FIS. All rights reserved.
//

#import "Specta.h"
#import "FISAppDelegate.h"
#define EXP_SHORTHAND
#import "Expecta.h"

SpecBegin(FISAppDelegate)

describe(@"FISAppDelegate", ^{
    __block FISAppDelegate *appDelegate;
    __block NSArray *speakers;
    __block NSArray *badges;
    __block NSArray *roomAssignments;
    
    beforeEach(^{
        appDelegate = [[FISAppDelegate alloc] init];
        
        speakers = @[ @"Adele Goldberg",
                      @"Edsger Dijkstra",
                      @"Joan Clarke",
                      @"Clarence Ellis",
                      @"Margaret Hamilton",
                      @"George Boole",
                      @"Tim Berners-Lee",
                      @"Jean Bartik"          ];
        
        badges = @[ @"Hello, my name is Adele Goldberg.",
                    @"Hello, my name is Edsger Dijkstra.",
                    @"Hello, my name is Joan Clarke.",
                    @"Hello, my name is Clarence Ellis.",
                    @"Hello, my name is Margaret Hamilton.",
                    @"Hello, my name is George Boole.",
                    @"Hello, my name is Tim Berners-Lee.",
                    @"Hello, my name is Jean Bartik."        ];
        
        roomAssignments = @[ @"Welcome, Adele Goldberg! You'll be in dressing room 1.",
                             @"Welcome, Edsger Dijkstra! You'll be in dressing room 2.",
                             @"Welcome, Joan Clarke! You'll be in dressing room 3.",
                             @"Welcome, Clarence Ellis! You'll be in dressing room 4.",
                             @"Welcome, Margaret Hamilton! You'll be in dressing room 5.",
                             @"Welcome, George Boole! You'll be in dressing room 6.",
                             @"Welcome, Tim Berners-Lee! You'll be in dressing room 7.",
                             @"Welcome, Jean Bartik! You'll be in dressing room 8."  ];
    });
    
    describe(@"badgeForSpeaker:", ^{
        it(@"should return a formatted badge", ^{
            expect([appDelegate badgeForSpeaker:@"Inigo Montoya"]).to.equal(@"Hello, my name is Inigo Montoya.");
        });
    });
    
    describe(@"badgesForSpeakers:", ^{ 
        it(@"should return a list of badge messages",^{
            expect([appDelegate badgesForSpeakers:speakers]).to.equal(badges);
        });
    });
    
    describe(@"greetingsAndRoomAssignmentsForSpeakers:", ^{
        it(@"should return a list of welcome messages and room assignments",^{
            expect([appDelegate greetingsAndRoomAssignmentsForSpeakers:speakers]).to.equal(roomAssignments);
        });
    });
    
});

SpecEnd
