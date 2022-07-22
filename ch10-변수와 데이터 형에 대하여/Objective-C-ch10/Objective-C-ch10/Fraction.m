//
//  Fraction.m
//  Objective-C-ch10
//
//  Created by kimhyungyu on 2022/07/22.
//

#import "Fraction.h"

// MARK: -  Fraction Class

@implementation Fraction

- (void)print {
    NSLog(@"%i/%i", self.numerator, self.denominator);
}

- (double)convertToNum {
    if (_denominator != 0)
        return (double)_numerator / _denominator;
    else
        return NAN;
}

- (void)setTo:(int)n over:(int)d {
    self.numerator = n;
    self.denominator = d;
}

- (Fraction *)add:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

- (void)reduce {
    // 정적 변수는 초깃값이 0이다.
    int u = self.numerator;
    int v = self.denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    self.numerator /= u;
    self.denominator /= u;
}

@end
