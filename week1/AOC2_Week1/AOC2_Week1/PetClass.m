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
    petHungerMeter = 5 / petThirstMeter * 3;
    NSLog(@"You won a Pet %@", petName);
    
    if (petHungerMeter <= 0)
    {
        NSLog(@"Your new %@ wants %i bowls of food", petName, petHungerMeter);
    }
    else if (petHungerMeter >= 2)
    {
        NSLog(@"Your new %@ wants %i bowls of food", petName, petHungerMeter);
    }
    else if (petHungerMeter >= 3)
    {
        NSLog(@"Your new %@ is starving! Give it %i bowls of food asap!", petName, petHungerMeter);
    }
    
}

-(void)setPetWeight : (int)newPetWeight
{
    //re use petName from above
    petWeight = newPetWeight;
    NSLog(@"Your pet %@ weighs about %i pounds.", petName, petWeight);
}

-(void)setPetFoodAmount : (int)newPetFoodAmount
{
    petFoodAmount = newPetFoodAmount;
    NSLog(@"Your pet should eat about %i bowls of food.", petFoodAmount);
}

-(void)setPetWaterAmount : (int)newPetWaterAmount
{
    petWaterAmount = newPetWaterAmount;
    NSLog(@"Your pet probably wants about %i bowls of water", petWaterAmount);
}

-(void)setPetThirstMeter : (int)newPetThirstMeter
{
    petThirstMeter = newPetThirstMeter;
    NSLog(@"Pet Thirst Meter: %i", petThirstMeter);
}

-(void)setPetHungerMeter: (int)newPetHungerMeter
{
    petHungerMeter = newPetHungerMeter;
    NSLog(@"Pet Hunger Meter: %i", petHungerMeter);
}

-(void)setPetLivesAvailable : (int)newPetLivesAvailable
{
    petLivesAvailable = newPetLivesAvailable;
    NSLog(@"This pet has about %i lives left", petLivesAvailable);
}

-(NSString *)getPetName
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
    petLivesAvailable = petFoodAmount + petThirstMeter + petHungerMeter / petWeight;
    return petLivesAvailable;
}

@end
