//
//  petCat.h
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//  This is the Base Class

#import <Foundation/Foundation.h>
#import "PetAnimal.h"

@interface petCat : PetAnimal
{
    int hairballs;
}

//data members for pet's age in human years and cat years
@property int hairballs;
@property int petAgeInCatYears;

//create methods
-(id)init;

//override this method from base class (PetAnimal)
//in sub class (petCat).
-(void)calculatePetAgeInHumanYears;

@end
