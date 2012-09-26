//
//  PetClass.m
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "PetClass.h"

@implementation PetClass

-(void)setPetName : (NSString *)newPetName
{
    petName = newPetName;
    NSLog(@"My pet\'s name is %@", petName);
}

-(void)setPetWeight : (int)newPetWeight
{
    weight = newPetWeight;
    NSLog(@"My pet weighs %i pounds.", weight);
}

-(void)setPetFoodAmount : (int)newPetFoodAmount
{
    
}

-(void)setPetWaterAmount : (int)newPetWaterAmount
{
    
}

-(void)setPetLivesAvailable : (int)newPetLivesAvailable
{
    
}

-(NSString*)getPetName
{
    return petName;
}

-(int)getPetWeight
{
    return petWeight;
}

-(int)getPetFoodAmount
{
    return petFoodAmount;
}

-(int)getPetWaterAmount
{
    return petWaterAmount;
}

-(int)getPetLivesAvailable
{
    petLivesAvailable = petFood + petWater / petWeight;
    return petLivesAvailable;
}



@end
