//
//  Calculator.h
//  Objective-C-ch4
//
//  Created by kimhyungyu on 2022/06/18.
//

#import <Foundation/Foundation.h>

// MARK: - Calculator

//MARK: - @interface

@interface Calculator : NSObject

// 누산기 메서드
- (void)setAccumulator:(double)value;
- (void)clear;
- (double)accumulator;

// 산술 연산 메서드
- (void)add:(double)value;
- (void)subtract:(double)value;
- (void)multiply:(double)value;
- (void)divide:(double)value;

@end
