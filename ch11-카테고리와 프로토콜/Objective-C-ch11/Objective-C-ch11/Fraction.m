//
//  Fraction.m
//  Objective-C-ch11
//
//  Created by kimhyungyu on 2022/08/11.
//

#import "Fraction.h"

// MARK: -  Fraction Class

// 이름없는 카테고리로 선언된 메소드는 메인 구현 부분에서 선언.
// private 으로 정의.
@interface Fraction ()

- (void)reduce;

@end

// public 으로 정의.
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

- (void)reduce {
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
