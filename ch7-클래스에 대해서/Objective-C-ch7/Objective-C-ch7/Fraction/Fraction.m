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
// 컴파일러가 작성한 접근자 메서드는 효율적이고, 다중 스레드, 다양한 시스템, 다중 코어 환경에서 좀 더 안전하게 작동합니다.
//@synthesize numerator, denominator;

- (void)print {
    NSLog(@"%i/%i", self.numerator, self.denominator);
}

- (double)convertToNum {
    if (_denominator != 0)
        return (double)_numerator / _denominator;
    else
        return NAN;
}

@end
