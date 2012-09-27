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
    textlabelName = [[UILabel alloc]initWithFrame:CGRectMake(0, 5, 200, 50)];
    textlabelName.backgroundColor = [UIColor whiteColor];
    textlabelName.text = @"Name";
    textlabelName.textAlignment = kCTCenterTextAlignment;
    [self.view addSubview:textlabelName];
    
    
    textlabelType = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, 200, 50)];
    textlabelType.backgroundColor = [UIColor whiteColor];
    textlabelType.text = @"Pet Type";
    textlabelType.textAlignment = kCTCenterTextAlignment;
    [self.view addSubview:textlabelType];
    
    
    // 3 Dynamic Labels
    textlabelFood = [[UILabel alloc]initWithFrame:CGRectMake(0, 15, 200, 50)];
    textlabelFood.backgroundColor = [UIColor whiteColor];
    textlabelFood.text = @"Bowls of Food";
    textlabelFood.textAlignment = kCTCenterTextAlignment;
    [self.view addSubview:textlabelFood];
    
    // water for pet
    textlabelWater = [[UILabel alloc]initWithFrame:CGRectMake(5, 20, 200, 50)];
    textlabelWater.backgroundColor = [UIColor whiteColor];
    textlabelWater.text = @"Bowls of Water";
    textlabelWater.textAlignment = kCTCenterTextAlignment;
    [self.view addSubview:textlabelWater];
    
    textlabelWeight = [[UILabel alloc]initWithFrame:CGRectMake(10, 25, 200, 50)];
    textlabelWeight.backgroundColor = [UIColor whiteColor];
    textlabelWeight.text = @"Pet Weight";
    textlabelWeight.textAlignment = kCTCenterTextAlignment;
    [self.view addSubview:textlabelWeight];
    
    // thirst meter
    textlabelThirstMeter = [[UILabel alloc]initWithFrame:CGRectMake(15, 30, 200, 50)];
    textlabelThirstMeter.backgroundColor = [UIColor whiteColor];
    textlabelThirstMeter.text = @"Thirst Meter";
    textlabelThirstMeter.textAlignment = kCTCenterTextAlignment;
    [self.view addSubview:textlabelThirstMeter];
    
    // hunger meter
    textlabelHungerMeter = [[UILabel alloc]initWithFrame:CGRectMake(20, 35, 200, 50)];
    textlabelHungerMeter.backgroundColor = [UIColor whiteColor];
    textlabelHungerMeter.text = @"Hunger Meter";
    textlabelHungerMeter.textAlignment = kCTCenterTextAlignment;
    [self.view addSubview:textlabelHungerMeter];
    
    // lives available
    textlabelLivesAvailable = [[UILabel alloc]initWithFrame:CGRectMake(25, 40, 200, 50)];
    textlabelLivesAvailable.backgroundColor = [UIColor whiteColor];
    textlabelLivesAvailable.text = @"Lives Available";
    textlabelLivesAvailable.textAlignment = kCTCenterTextAlignment;
    [self.view addSubview:textlabelLivesAvailable];
    

    //Static Factory Calls
    //data shows in the log output
    //but does not show in the visual view for end users yet
    petCat *cat = (petCat *) [PetFactory createPet:1];
    [cat setPetName:@"Cat"];
    [cat setPetWeight:15];
    textlabelInfo = [NSString stringWithFormat:@"Pet Name: %@ Life Meter: %i",[cat getPetName], [cat getPetLivesAvailable]];
    textlabelInfo.textAlignment = kCTLeftTextAlignment;
    
    petDog *dog = (petDog *) [PetFactory createPet:2];
    [dog setPetName:@"Dog"];
    [dog setPetWeight:30];
    textlabelInfo = [NSString stringWithFormat:@"Pet Name: %@ Life Meter: %i",[dog getPetName], [dog getPetLivesAvailable]];
    textlabelInfo.textAlignment = kCTLeftTextAlignment;
    
    petBird *bird = (petBird *) [PetFactory createPet:3];
    [bird setPetName:@"Bird"];
    [bird setPetWeight:2];
    textlabelInfo = [NSString stringWithFormat:@"Pet Name: %@ Life Meter: %i",[bird getPetName], [bird getPetLivesAvailable]];
    textlabelInfo.textAlignment = kCTLeftTextAlignment;
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
