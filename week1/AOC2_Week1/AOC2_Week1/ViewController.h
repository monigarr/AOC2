//
//  ViewController.h
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//  XCode version 4.5
//  Target iPhone iOS 6
//  Mountain Lion

#import <UIKit/UIKit.h>
#import "PetFactory.h"
#import "PetClass.h"
#import "petCat.h"
#import "petDog.h"
#import "petBird.h"

@interface ViewController : UIViewController
{
    //static labels
    UILabel *textlabelName;
    UILabel *textlabelType;
    UILabel *textlabelFood;
    UILabel *textlabelWater;
    
    //dynamic labels
    UILabel *textlabelWeight;
    UILabel *textlabelThirstMeter;
    UILabel *textlabelHungerMeter;
    UILabel *textlabelLivesAvailable;
}
@end
