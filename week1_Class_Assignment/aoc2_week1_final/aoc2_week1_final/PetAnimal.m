//
//  PetAnimal.m
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/29/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//  This is my Base Class

#import "PetAnimal.h"

@implementation PetAnimal

@synthesize petAgeInHumanYears, petMood, petNames;

//initialize base class (petCat), create instance & set age to 1 year.
-(id)init
{
    self = [super init];
    //check to make sure initialized
    if (self != nil)
    {
        [self setPetAgeInHumanYears:1];
        [self setPetMood:nil];
        [self setPetNames:nil];
    }
    return self;
}

-(void)calculatePetAgeInHumanYears
{
    //no calculation yet
    NSLog(@"Your Pet is %i years old", petAgeInHumanYears);
}


@end
