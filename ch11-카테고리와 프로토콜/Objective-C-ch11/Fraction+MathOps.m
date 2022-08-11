//
//  Fraction+MathOps.m
//  Objective-C-ch11
//
//  Created by kimhyungyu on 2022/08/11.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)

- (Fraction *)add:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator * f.denominator) + (self.denominator * f.numerator) ;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

- (Fraction *)mul:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

- (Fraction *)sub:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = (self.numerator * f.denominator) - (self.denominator * f.numerator) ;
    result.denominator = self.denominator * f.denominator;
    [result reduce];
    
    return result;
}

- (Fraction *)div:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator;
    result.denominator = self.denominator * f.numerator;
    [result reduce];
    
    return result;
}

@end
