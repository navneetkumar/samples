//
//  ViewController.m
//  com.bluejeansnet.test
//
//  Created by Navneet Kumar on 04/11/14.
//  Copyright (c) 2014 Navneet Kumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *onTouch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)go:(id)sender {
    NSLog(@"hi");
}

@end
