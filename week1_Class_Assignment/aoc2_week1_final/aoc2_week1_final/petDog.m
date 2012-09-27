//
//  petDog.m
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "petDog.h"

@implementation petDog

//setup getters & setters
@synthesize petAgeInHumanYears, petAgeInDogYears;

//customize init to set unique data members
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setPetAgeInDogYears:7];
        [self setPetAgeInHumanYears:1];
        //replace with label
        NSLog(@"Pet Dog was Created");
    }
    return self;
};

//over ride calculate pet age in human years method
-(void)calculatePetAgeInHumanYears
{
    [self setPetAgeInDogYears:(petAgeInHumanYears * 7)];
    //replace with label here
    NSLog(@"%i Dog Years = %i Human Years.", petAgeInDogYears, petAgeInHumanYears);
}

@end
