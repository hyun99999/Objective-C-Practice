//
//  Fraction.h
//  Objective-C-ch10
//
//  Created by kimhyungyu on 2022/07/22.
//

#import <Foundation/Foundation.h>

// MARK: -  Fraction Class

@interface Fraction : NSObject

@property int numerator, denominator;

// 인스턴스 메서드는 -.
- (id)init;
- (id)initWith:(int)n over:(int)d;
- (void)print;
- (double)convertToNum;
- (void)setTo:(int)n over:(int)d;
- (Fraction *)add:(Fraction *)f;
- (void)reduce;

// 클래스 메서드는 +.
+ (Fraction *)allocF;
+ (int)count;

@end
