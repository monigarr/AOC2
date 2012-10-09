AOC2
====
	Full Sail University
	Mobile Development Course
	Bachelor of Science
	Instructor: Alexia Dawson
	Student:  Monica Peters
	Advanced Objective-C 2

	XCode version 4.5
	Target iPhone iOS 6
	Mountain Lion

PROJECT 1
==========
	Due: September 27th 2012
	Rubric: https://docs.google.com/a/seawaywebsite.com/spreadsheet/ccc?key=0AnXSgu1Kvh1fdEduVEpqdXk4SThYa2daRnRXSzdxcEE#gid=0
	3 Static Labels
	3 Dynamic Labels
	Design Pattern: static Factory
		1 Base Class ->  petFactory
		3 Sub Classes -> petCat -> petDog, petBird

		CHANGED
		1 Base Class  -> petAnimal
		3 Sub Classes -> petCat, petDog, petBird
	Video Review & Demo: http://youtu.be/PPK6mthiZeg

PROJECT 2
==========
	Due: October 4th 2012
	Rubric: https://docs.google.com/a/seawaywebsite.com/spreadsheet/ccc?key=0AnXSgu1Kvh1fdEduVEpqdXk4SThYa2daRnRXSzdxcEE#gid=0
	Simple Calculator
	Main View: 
		on off UISwitch
		calculator with add, subtract, multiply, divide
		background color changer UISegmentedController
		info button opens another view (infoViewController)
		infoViewController shows name & close button
	Video Review & Demo:  http://youtu.be/LLLTve0rxLY

PROJECT 3
==========
	Due: October 11th 2012
	Rubric: https://docs.google.com/a/seawaywebsite.com/spreadsheet/ccc?key=0AnXSgu1Kvh1fdEduVEpqdXk4SThYa2daRnRXSzdxcEE#gid=0
	Simple Event Planner
	Primary View: ViewController
		label centered at top "Date Planner"
		UITextView takes up majority of view. Shows list of events the user added.
		UIButton at bottom center "Add Event". Click to show second view.
		When Add Event view closes, the new event is added to the UITextView on the Primay View.
	Add Event View:  addEventViewController
		Save Button at top left.  Event text, date/time is collected & sent back to Primary View.
		Close Keyboard button at top right. 
		Label 'event' above UITextField placed under the top buttons.
		UIDatePicker at bottom of view.  Must always have min. date of current date.
		UILabel 'select date & time of event' above the date picker.
	Create custom delegate to pass data between the two views. 
	To create carriage returns in text, use \n
	Video Review & Demo:  http://youtu.be/pWXjawNq9bA

PROJECT 4
==========
	Due: October 18th 2012
	Rubric:
	Primary View
	    Add a save button to the header of the view. Attach an IBAction and click event.
	    Remove the Add Event button and add a swipable label at the bottom of the view. Add the text, "Swipe Right to Add Event"
	    Attach a UISwipeGestureRecognizer to the UILabel. When the swipe right gesture happens, pop up the add event view.
	    When the user clicks the save button, use NSUserDefaults to save the text in the textview.
	    When the application loads, use NSUserDefaults to load in any previously saved text and drop it into the textview.
	Add Event View
	    Remove the save button from the header.
	    Add a UILabel at the top with the text "Swipe Left to Close"
	    Add a UISwipeGestureRecognizer to the UILabel and attach an event handler.
	    When user swipes left on UILabel, collect event title info, date/time info from picker and close event view.
	Video Review & Demo: 