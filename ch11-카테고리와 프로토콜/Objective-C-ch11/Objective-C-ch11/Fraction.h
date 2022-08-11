//
//  Fraction.h
//  Objective-C-ch11
//
//  Created by kimhyungyu on 2022/08/11.
//

#import <Foundation/Foundation.h>

// MARK: -  Fraction Class

@interface Fraction : NSObject

@property int numerator, denominator;

- (void)print;
- (double)convertToNum;
- (void)setTo:(int)n over:(int)d;
- (void)reduce;

@end
