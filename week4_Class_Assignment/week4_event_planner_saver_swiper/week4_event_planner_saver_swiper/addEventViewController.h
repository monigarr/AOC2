//
//  addEventViewController.h
//  week4_event_planner_saver_swiper
//
//  Created by Monica Peters on 10/10/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassEventDetails <NSObject>

@required
-(void)setEvent:(NSString *)eventString;
@end

@interface addEventViewController : UIViewController
{
    //hook these up in xib view
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UITextField *eventTextField;
    IBOutlet UIButton *closeKeyboard;
    //enable user interaction in xib view
    IBOutlet UILabel *swipeLeftLabel;
    
    //hold event details
    NSString *text;
    NSString *event;
    
    //gestures
    UISwipeGestureRecognizer *swipeLeft;
    
    //pass event details
    id <PassEventDetails> delegate;
    
    //make frame for moving keyboard / textfield first responder
    CGRect eventTextFieldFrame;
}

@property (strong) id<PassEventDetails> delegate;
@property (nonatomic, retain)IBOutlet UIDatePicker *datePicker;


-(IBAction)onSwipe:(UISwipeGestureRecognizer *)recognizer;
-(IBAction)closeKeyboard:(id)sender;

@end
