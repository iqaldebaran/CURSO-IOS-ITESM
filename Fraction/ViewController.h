//
//  ViewController.h
//  Fraction
//
//  Created by Alumnos on 03/11/12.
//  Copyright (c) 2012 Alumnos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *num1;
@property (weak, nonatomic) IBOutlet UITextField *den1;
@property (weak, nonatomic) IBOutlet UITextField *num2;
@property (weak, nonatomic) IBOutlet UITextField *den2;
- (IBAction)add;
@property (weak, nonatomic) IBOutlet UILabel *result;

- (IBAction)hide;

@end
