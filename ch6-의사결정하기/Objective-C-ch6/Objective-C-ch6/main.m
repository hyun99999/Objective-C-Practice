//
//  main.m
//  Objective-C-ch6
//
//  Created by kimhyungyu on 2022/06/26.
//

#import <Foundation/Foundation.h>

// MARK: - @Interface

@interface Fraction : NSObject

- (void) print;
- (void) setNumberator:(int)n;
- (void) setDenominator:(int)n;
- (int) numerator;
- (int) denominator;
- (double) convertToNum;

@end

// MARK: - @Implementation

@implementation Fraction {
    int numerator;
    int denominator;
}

- (void)print {
    NSLog(@"%i/%i", numerator, denominator);
}

- (void)setNumberator:(int)n {
    numerator = n;
}

- (void)setDenominator:(int)n {
    denominator = n;
}

- (int)numerator {
    return numerator;
}

- (int)denominator {
    return denominator;
}

- (double)convertToNum {
    if (denominator != 0) {
        return (double)numerator / denominator;
    } else {
        return NAN;
    }
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *aFraction = [[Fraction alloc] init];
        Fraction *bFraction = [[Fraction alloc] init];
        
        [aFraction setNumberator:1]; // 첫 번째 분수는 1/4
        [aFraction setDenominator:4];
        
        [aFraction print];
        NSLog(@" =");
        NSLog(@"%g",[aFraction convertToNum]);
        
        [bFraction print]; // bFraction 에 값을 할당하지 않는다.
        NSLog(@" =");
        NSLog(@"%g",[bFraction convertToNum]);
    }
    
    return 0;
}
