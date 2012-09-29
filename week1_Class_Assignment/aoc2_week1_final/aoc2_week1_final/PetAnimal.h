//
//  PetAnimal.h
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/29/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//  This is the Base Class
//  My sub classes: petCat, petDog, petBird

#import <Foundation/Foundation.h>

@interface PetAnimal : NSObject
{
    int petAgeInHumanYears;
    NSString *petMood;
    NSArray *petNames;
}

typedef enum
{
    CAT,
    DOG,
    BIRD
}petAnimal;

//create properties to be shared by all pets
//to create setters/getters for these, synthesize
//in implementation file
@property int petAgeInHumanYears;
@property NSString *petMood;
@property NSArray *petNames;

//create methods
-(id)init;

//method to calculate a pet's age
//we will override this in the sub classes.
-(void)calculatePetAgeInHumanYears;


@end
