//
//  Fraction.h
//  Objective-C-ch7
//
//  Created by kimhyungyu on 2022/06/30.
//

#import <Foundation/Foundation.h>

// MARK: -  Fraction Class

// interface 부분은 클래스를 다른 파일에서 사용할 때 컴파일러가 필요로 하는 모든 정보를 담고 있다.

@interface Fraction : NSObject

@property int numerator, denominator;
- (void)print;
- (double)convertToNum;
- (void)setTo:(int)n over:(int) d;
- (Fraction *)add:(Fraction *)f;
- (void)reduce;

@end
