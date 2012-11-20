//
//  ViewController.m
//  Fraction
//
//  Created by Alumnos on 03/11/12.
//  Copyright (c) 2012 Alumnos. All rights reserved.
//

#import "ViewController.h"
#import "Fraction.h"

@interface ViewController ()

@end

@implementation ViewController

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

- (IBAction)add {
    
    //Se llama a ocultar teclado
    [self hide];
       
    NSInteger num1 = [self.num1.text intValue];
    NSInteger num2 = [self.num1.text intValue];
    
    NSInteger den1 = self.den1.text.intValue; //Es otra forma
    NSInteger den2 = [self.den2.text intValue];
    
    Fraction * fr1, *fr2, *fr3;
    fr1 = [[Fraction alloc] initWithNumerator:num1 andDenominator:den1];
    fr2 = [[Fraction alloc] initWithNumerator:num2 andDenominator:den2];
    fr3 = [fr1 addFraction:fr2];
    self.result.text = fr3.description;
}

- (IBAction)hide {
    //Ocultar el teclado
    [self.num1 resignFirstResponder];
    [self.num2 resignFirstResponder];
    [self.den1 resignFirstResponder];
    [self.den2 resignFirstResponder];
}

@end
