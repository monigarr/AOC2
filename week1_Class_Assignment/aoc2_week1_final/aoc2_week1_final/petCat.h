//
//  petCat.h
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//  This is the Base Class

#import <Foundation/Foundation.h>

@interface petCat : NSObject
{
    int petType;
}

typedef enum
{
    CAT,
    DOG,
    BIRD
}petType;

//create properties to be shared by all pets
//to create setters/getters for these, synthesize
//in implementation file
@property NSArray *petNames;
@property NSString *petMood;
@property int petAgeInHumanYears;

//create methods
-(id)init;

//method to calculate pet thirst meter.
//we will override this in the sub classes.
-(void)calculatePetAgeInHumanYears;

@end
