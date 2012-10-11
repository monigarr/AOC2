//
//  addEventViewController.h
//  AOC2_Week3
//
//  Created by Monica Peters on 10/3/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassEventDetails <NSObject>

@required
-(void)setEvent:(NSString *)eventsString;
@end

@interface addEventViewController : UIViewController
{
    IBOutlet UITextField *eventTextField;
    IBOutlet UIDatePicker *datePicker;
    NSString *dateText;
    NSString *newEvent;
    CGRect eventTextFieldFrame;
    id <PassEventDetails> delegate;
    IBOutlet UILabel  *leftSwiperLabel;
    
    //gesture recognizer
    UISwipeGestureRecognizer *leftSwiperGestureRecognizer;
}

//
@property (nonatomic, retain)IBOutlet UIDatePicker *datePicker;
@property (strong) id <PassEventDetails> delegate;

//process Buttons: Save, Close Keyboard
-(IBAction)onClick:(id)sender;

@end
