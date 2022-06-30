//
//  Fraction.m
//  Objective-C-ch7
//
//  Created by kimhyungyu on 2022/06/30.
//

// 꺾쇠가 아닌 큰 따옴표로 로컬 파일을 임포트한다.

#import "Fraction.h"

@implementation Fraction {
    int numerator;
    int denominator;
}

- (void)print {
    NSLog(@"%i/%i", numerator, denominator);
}

- (void)setNumerator:(int)n {
    numerator = n;
}

- (void)setDenominatr:(int)d {
    denominator = d;
}

- (int)numerator {
    return numerator;
}

- (int)denominator {
    return denominator;
}

- (double)convertToNum {
    if (denominator != 0)
        return (double)numerator / denominator;
    else
        return NAN;
}

@end
