//
//  Fraction.h
//  Fraction
//
//  Created by Alumnos on 03/11/12.
//  Copyright (c) 2012 Alumnos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject {
    @private
    int numerator;
    int denominator;
}

@property (readonly) int numerator;
@property (readonly) int denominator;
- (id) initWithNumerator : (NSInteger) num andDenominator : (NSInteger) den;
- (Fraction *) addFraction : (Fraction *) fraction2;



@end
