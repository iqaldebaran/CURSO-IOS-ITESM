//
//  Fraction.m
//  Fraction
//
//  Created by Alumnos on 03/11/12.
//  Copyright (c) 2012 Alumnos. All rights reserved.
//

int gcd(int n1, int n2) {
    if (n2 == 0) {
        return n1;
    }
    else {return gcd(n2, n1%n2);
    }
}

#import "Fraction.h"

@implementation Fraction
@synthesize numerator;
@synthesize denominator;

- (id) initWithNumerator : (NSInteger) num andDenominator : (NSInteger) den {
    if (self = [super init]) {
        int gcd1 = gcd(num, den);
        numerator = num/gcd1;
        denominator = den/gcd1;
        
    }
    
    return self;
}

- (Fraction *) addFraction:(Fraction *)fraction2 {
    NSInteger denominatorResult = self.denominator * fraction2.denominator;
    NSInteger numeratorResult = self.numerator*fraction2.denominator + fraction2.numerator * self.denominator;
    
    Fraction * fr = [[Fraction alloc] initWithNumerator:numeratorResult andDenominator:denominatorResult];
    
    return fr;
}

- (NSString *) description {
    NSString * result = [NSString stringWithFormat:@"%d/%d", self.numerator, self.denominator];
    
    return result;
}

@end
