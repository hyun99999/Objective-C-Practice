//
//  Fraction.m
//  Objective-C-ch7
//
//  Created by kimhyungyu on 2022/06/30.
//

// 꺾쇠가 아닌 큰 따옴표로 로컬 파일을 임포트한다.

#import "Fraction.h"

// MARK: -  Fraction Class

@implementation Fraction

// synthesize 는 프로퍼티에 해당하는 getter, setter 메서드를 생성하도록 지시한다.
@synthesize numerator, denominator;

- (void)print {
    NSLog(@"%i/%i", numerator, denominator);
}

- (double)convertToNum {
    if (denominator != 0)
        return (double)numerator / denominator;
    else
        return NAN;
}

@end
