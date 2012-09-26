//
//  ViewController.h
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PetFactory.h"
#import "PetClass.h"
#import "petCat.h"
#import "petDog.h"
#import "petBird.h"

@interface ViewController : UIViewController
{
    UILabel *textlabelName;
    UILabel *textlabelType;
    UILabel *textlabelWeight;
    UILabel *textlabelFood;
    UILabel *textlabelWater;
    UILabel *textlabelLivesAvailable;
}
@end
