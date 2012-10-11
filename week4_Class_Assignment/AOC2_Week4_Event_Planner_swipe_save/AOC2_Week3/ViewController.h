//
//  ViewController.h
//  AOC2_Week3
//
//  Created by Monica Peters on 10/3/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEventViewController.h"

@interface ViewController : UIViewController <PassEventDetails>
{
    IBOutlet UITextView *eventDetails;
    IBOutlet UIButton *saveEventButton;
    IBOutlet UILabel  *rightSwiperLabel;
    
    //gesture recognizer
    UISwipeGestureRecognizer *rightSwiperGestureRecognizer;
}


//show addEventViewController view when I swipe right
-(void)onRightSwipe:(UISwipeGestureRecognizer *)recognizer;

//save event info from addEventViewController string
//on this main view
-(IBAction)onSave:(id)sender;

//remove all previously loaded / saved events
-(IBAction)onClear:(id)sender;

@end
