//
//  ViewController.m
//  SearchMedicine
//
//  Created by Ramu Naidu on 14/04/14.
//  Copyright (c) 2014 Ramu Naidu. All rights reserved.
//

#import "ViewController.h"
#import "AuthenticationObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[AuthenticationObject sharedInstance] setUpdateLoginStatus:^(NSString *update) {
        NSLog(@"Update %@",update);
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fbButton:(id)sender{
    [[AuthenticationObject sharedInstance] fbTouched];
}

@end
