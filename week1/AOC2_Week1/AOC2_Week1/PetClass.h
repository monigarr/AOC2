//
//  PetClass.h
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PetClass : NSObject
{
    @public
    NSString *petName;
    int petWeight;
    int petFoodAmount;
    int petWaterAmount;
    int petThirstMeter;
    int petHungerMeter;
    int petLivesAvailable;
}

typedef enum
{
    PETCLASS_DEFAULT = 0,
    PETCLASS_CAT = 1,
    PETCLASS_DOG = 2,
    PETCLASS_BIRD = 3
}petType;


-(void)setPetName           : (NSString *)newPetName;
-(void)setPetWeight         : (int)newPetWeight;
-(void)setPetFoodAmount     : (int)newPetFoodAmount;
-(void)setPetWaterAmount    : (int)newPetWaterAmount;
-(void)setPetThirstMeter    : (int)newPetThirstMeter;
-(void)setPetHungerMeter    : (int)newPetHungerMeter;
-(void)setPetLivesAvailable : (int)newPetLivesAvailable;

-(NSString*)getPetName;
-(int)getPetWeight;
-(int)getPetFoodAmount;
-(int)getPetWaterAmount;
-(int)getPetThirstMeter;
-(int)getPetHungerMeter;
-(int)getPetLivesAvailable;

@end
