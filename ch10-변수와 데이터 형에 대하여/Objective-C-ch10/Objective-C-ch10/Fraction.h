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
- (void)print;
- (double)convertToNum;
- (void)setTo:(int)n over:(int) d;
- (Fraction *)add:(Fraction *)f;
- (void)reduce;

@end
