//
//  main.m
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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int intergerVar = 100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        
        // intergerVar = 100
        NSLog(@"intergerVar = %i", intergerVar);
        // floatingVar = 331.790009
        NSLog(@"floatingVar = %f", floatingVar);
        // doubleVar = 8.440000e+11
        NSLog(@"doubleVar = %e", doubleVar);
        // doubleVar = 8.44e+11
        NSLog(@"doubleVar = %g", doubleVar);
        // charVar = W
        NSLog(@"charVar = %c", charVar);
        
        // 51
        NSLog(@"%i", (int)(29.55 + 21.99));
        // 50
        NSLog(@"%i", (int)29.55 + (int)21.99);
        
        //MARK: - Calculator
        
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator:100.0];
        [deskCalc add:200.];
        [deskCalc divide:15.0];
        [deskCalc subtract:10.0];
        // double 로 형변환 됨.
        [deskCalc multiply:5];
        
        // The result is 50
        NSLog(@"The result is %g", [deskCalc accumulator]);
    }
    return 0;
}
