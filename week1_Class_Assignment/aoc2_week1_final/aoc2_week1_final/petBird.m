//
//  petBird.m
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "petBird.h"

@implementation petBird

//setup setters & getters
@synthesize birdCageSize, birdHappiness, petAgeInBirdYears;

//setup custom init
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        //set data members to defaults
        [self setBirdCageSize:LARGE];
        [self setBirdHappiness:@"not so happy"];
        [self setPetAgeInBirdYears:1];
        //replace with label
        NSLog(@"Pet Bird was Created");
    }
    return self;
    

}
@end
