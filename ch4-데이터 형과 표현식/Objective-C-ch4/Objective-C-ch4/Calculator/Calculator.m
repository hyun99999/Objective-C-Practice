//
//  Calculator.m
//  Objective-C-ch4
//
//  Created by kimhyungyu on 2022/06/18.
//

#import "Calculator.h"

//MARK: - @implementation

@implementation Calculator {
    double accumulator;
}

- (void)setAccumulator:(double)value {
    accumulator = value;
}

- (void)clear {
    accumulator = 0;
}

- (double)accumulator {
    return accumulator;
}

- (void)add:(double)value {
    accumulator += value;
}

- (void)subtract:(double)value {
    accumulator -=value;
}

- (void)multiply:(double)value {
    accumulator *= value;
}

- (void)divide:(double)value {
    accumulator /= value;
}

@end
