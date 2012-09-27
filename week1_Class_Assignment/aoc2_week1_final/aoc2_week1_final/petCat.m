//
//  petCat.m
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "petCat.h"

@implementation petCat

//setup setters and getters
@synthesize petNames, petMood, petAgeInHumanYears;

//initialize base class (petCat), create instance & set age to 1 year.
-(id)init
{
    self = [super init];
    //check to make sure initialized
    if (self != nil)
    {
        [self setPetAgeInHumanYears:1];
        [self setPetMood:nil];
    }
    return self;
}

-(void)calculatePetAgeInHumanYears
{
    //no calculation yet
    NSLog(@"Your Pet is %i years old", petAgeInHumanYears);
}

@end
