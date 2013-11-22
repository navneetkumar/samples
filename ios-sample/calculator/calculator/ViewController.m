//
//  ViewController.m
//  calculator
//
//  Created by Navneet Kumar on 21/11/13.
//  Copyright (c) 2013 Navneet Kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)Calculate {
    if(RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    else {
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
            default:
                break;
        }
    }
    SelectNumber = 0;
 
}

-(IBAction)Number1:(id)sender {
    
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 1;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}
-(IBAction)Number2:(id)sender{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 2;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}
-(IBAction)Number3:(id)sender{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 3;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number4:(id)sender{
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 4;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number5:(id)sender {
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 5;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number6:(id)sender {
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 6;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number7:(id)sender {
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 7;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number8:(id)sender {
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 8;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number9:(id)sender {
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 9;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Number0:(id)sender {
    SelectNumber = SelectNumber * 10;
    SelectNumber = SelectNumber + 0;
    Screen.text = [NSString stringWithFormat:@"%i", SelectNumber];
}
-(IBAction)Times:(id)sender {
    [self Calculate];
    Method = 1;
}
-(IBAction)Divide:(id)sender {
    [self Calculate];
    Method = 2;
}
-(IBAction)Subtract:(id)sender {
    [self Calculate];
    Method = 3;
}
-(IBAction)Plus:(id)sender {
    [self Calculate];
    Method = 4;
}
-(IBAction)Equals:(id)sender {
    [self Calculate];
    Method = 0;
    Screen.text = [NSString stringWithFormat:@"%.2f",RunningTotal];
    
}
-(IBAction)AllClear:(id)sender {
    Method = 0;
    SelectNumber = 0;
    RunningTotal=0;
    Screen.text = [NSString stringWithFormat:@"0"];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
