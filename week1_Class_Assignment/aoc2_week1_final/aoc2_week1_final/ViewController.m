//
//  ViewController.m
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
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
    
    //setup visuals and labels
    self.view.backgroundColor = [UIColor whiteColor];
    
    //labels
    textLabelPet1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 25, 200, 100)];
    textLabelPet1.text = @"Pet 1";
    [self.view addSubview:textLabelPet1];
    
    textLabelPet2 = [[UILabel alloc]initWithFrame:CGRectMake(0, 150, 200, 100)];
    textLabelPet2.text = @"Pet 2";
    [self.view addSubview:textLabelPet2];
    
    textLabelPet3 = [[UILabel alloc]initWithFrame:CGRectMake(0, 275, 200, 100)];
    textLabelPet3.text = @"Pet 3";
    [self.view addSubview:textLabelPet3];
    
    textLabelMonica = [[UILabel alloc]initWithFrame:CGRectMake(0, 390, 320, 100)];
    textLabelMonica.text = @"Monica Peters 2012";
    [self.view addSubview:textLabelMonica];
    
    uiTextViewPet1 = [[UITextView alloc]initWithFrame:CGRectMake(40, 65, 200, 100)];
    [self.view addSubview:uiTextViewPet1];
    
    uiTextViewPet2 = [[UITextView alloc]initWithFrame:CGRectMake(40, 190, 200, 100)];
    [self.view addSubview:uiTextViewPet2];
    
    uiTextViewPet3 = [[UITextView alloc]initWithFrame:CGRectMake(40, 305, 200, 100)];
    [self.view addSubview:uiTextViewPet3];
    
    
    
    //FACTORY CALLS
    //Learned from Alexia Dawson's Video Tutorials
    //at Full Sail University
    
    //instantiate pet dog
    //create pet dog, set age
    //calculate age of dog
    //output to a label the end user can see
    //nslog this beast for learning purposes also.
    
    petDog *puppyFace = (petDog *) [petFactory createNewPet: DOG];
    
    //setup pet names for all types of pets
    NSArray *petNames = [[NSArray alloc]initWithObjects:@"Puppy Face", @"Cocoa", @"Frankie", nil];
    
    
    //PUPPY FACE
    if (puppyFace != nil)
    {
        [puppyFace setPetNames:petNames[0]];
        [puppyFace setPetMood:@"very happy"];
        NSLog(@"%@, your pet dog is %@ and about %i in human years and %i in dog years", [puppyFace petNames], [puppyFace petMood], [puppyFace petAgeInHumanYears], [puppyFace petAgeInDogYears]);
        uiTextViewPet1.text = [NSString stringWithFormat:@"Name: %@ Mood: %@ Human Age: %i  Dog Age: %i", [puppyFace petNames], [puppyFace petMood], [puppyFace petAgeInHumanYears], [puppyFace petAgeInDogYears]];
    }
    
    //SMELLY CAT
    petCat *smellyCat = (petCat *) [petFactory createNewPet: CAT];
    [smellyCat setPetAgeInHumanYears:3];
    
    if (smellyCat != nil)
    {
        //[smellyCat setPetNames:nil];
        [smellyCat setPetMood:@"kind of happy"];
        [smellyCat setPetNames:petNames[1]];
        [smellyCat setPetAgeInHumanYears:3];
        NSLog(@"%@, your pet cat is %@ and %i years old in human years.", [smellyCat petNames], [smellyCat petMood], [smellyCat petAgeInHumanYears]);
        uiTextViewPet2.text = [NSString stringWithFormat:@"Name: %@ Mood: %@ Human Age: %i", [smellyCat petNames], [smellyCat petMood], [smellyCat petAgeInHumanYears]];
    }
    
    //FRANKIE BIRD
    petBird *frankie = (petBird *) [petFactory createNewPet: BIRD];
    [frankie setPetAgeInHumanYears:3];
    
    if (frankie != nil)
    {
        [frankie setPetNames:petNames[2]];
        [frankie setPetAgeInHumanYears:2];
        [frankie setPetAgeInBirdYears:7];
        [frankie setPetMood:@"not so happy"];
        [frankie setBirdCageSize:SMALL];
        NSLog(@"%@, your pet bird is %i years old in human years, %i years old in bird years, and he is %@, because his bird cage is too %d", [frankie petNames], [frankie petAgeInHumanYears], [frankie petAgeInBirdYears], [frankie petMood], [frankie birdCageSize]);
        uiTextViewPet3.text = [NSString stringWithFormat:@"Name: %@ Mood: %@ Human Age: %i Bird Cage Size: %d", [frankie petNames], [frankie petMood], [frankie petAgeInHumanYears], [frankie birdCageSize]];
    }
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
