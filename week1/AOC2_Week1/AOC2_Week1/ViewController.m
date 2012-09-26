//
//  ViewController.m
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    // 3 Static Labels
    textlabelName = [[UILabel alloc]initWithFrame:(0, 25, 315, 100)];
    textlabelType = [[UILabel alloc]initWithFrame:(0, 125, 315, 100)];
    textlabelWeight = [[[UILabel]alloc]initWithFrame:(0, 255, 315, 100)];
    // 3 Dynamic Labels
    textlabelFood = [[UILabel alloc]initWithFrame:(0, 25, 315, 100)];
    textlabelWater = [[UILabel alloc]initWithFrame:(0, 125, 315, 100)];
    textlabelLivesAvailable = [[[UILabel]alloc]initWithFrame:(0, 255, 315, 100)];

    //Static Factory Calls
    petCat *cat = (petCat *) [PetFactory createPet:1];
    [cat setPetName:@"Cat"];
    [cat setType:1];
    [cat setWeight:15];
    textlabelName = [NSString stringWithFormat:@"Pet Name: %@ Pet Type: %i",[cat getPetname], [cat getLivesAvailable]];
    
    petDog *dog = (petDog *) [PetFactory createPet:2];
    [dog setPetName:@"Dog"];
    [dog setType:2];
    [dog setWeight:30];
    textlabelName = [NSString stringWithFormat:@"Pet Name: %@ Pet Type: %i", [dog getPetname], [dog getLivesAvailable]];
}

-(void)viewDidUnload
{
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
