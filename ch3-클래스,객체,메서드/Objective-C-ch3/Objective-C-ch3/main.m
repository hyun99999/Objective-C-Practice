//
//  main.m
//  Objective-C-ch3
//
//  Created by kimhyungyu on 2022/06/17.
//

#import <Foundation/Foundation.h>

// MARK: - @interface

@interface Fraction : NSObject

- (void) print;
// setter
- (void) setNumerator: (int) n;
- (void) setDenominator: (int) d;
// getter
- (int) numerator;
- (int) denominator;

@end

// MARK: - @implementation

@implementation Fraction {
    int numerator;
    int denominator;
}

- (void)print {
    NSLog(@"%i/%i",numerator, denominator);
}

- (void)setNumerator:(int)n {
    numerator = n;
}

- (void)setDenominator:(int)d {
    denominator = d;
}

- (int)numerator {
    return numerator;
}

- (int)denominator {
    return denominator;
}

@end

// MARK: - program

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        // alloc(생성 즉, 메모리 할당) 과 init(초기화) 을 결합한 new.
        // Fraction *myFraction = [Fraction new];
        
        [myFraction setNumerator:1];
        [myFraction setDenominator:3];
        
        // The value of myFraction is: 1/3
        NSLog(@"The value of myFraction is: %i/%i", [myFraction numerator], [myFraction denominator]);
    }
    return 0;
}
