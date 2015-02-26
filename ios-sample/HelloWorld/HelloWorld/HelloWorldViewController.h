//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Navneet Kumar on 28/03/12.
//  Copyright (c) 2012 navneetk@thoughtworks.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController <UITextFieldDelegate>
- (IBAction)changeGreeting:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *Label;
@property (copy, nonatomic) NSString *userName;
@end
