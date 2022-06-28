//
//  main.m
//  Objective-C-ch6
//
//  Created by kimhyungyu on 2022/06/26.
//

#import "Calculator/Calculator.h"

// #import <Foundation/Foundation.h>

/*
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
*/

// 키보드에서 입력받은 문자 하나를 분류

/*
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char c;
        
        NSLog(@"Enter a single charcter:");
        scanf(" %c", &c);
        
        if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z'))
            NSLog(@"It's an alphabetic character.");
        else if (c >= '0' && c <= '9')
            NSLog(@"It's a digit.");
        else
            NSLog(@"It's a special character.");
    }
    
    return 0;
}
 */

// 연산자를 Switch 로 구분하는 계산기

/*
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double value1, value2;
        char operator;
        Calculator *deskCalc = [[Calculator alloc] init];
        
        NSLog(@"Type int your expression.");
        scanf("%lf %c %lf", &value1, &operator ,&value2);
        
        [deskCalc setAccumulator:value1];
        
        switch (operator) {
            case '+':
                [deskCalc add:value2];
                break;
            case '-':
                [deskCalc subtract:value2];
                break;
            case '*':
                [deskCalc multiply:value2];
                break;
            case '/':
                [deskCalc divide:value2];
                break;
            default:
                NSLog(@"Unknow operator.");
                break;
        }
        // 소수 2자리까지 출력
        NSLog(@"%.2f", [deskCalc accumulator]);
    }
    
    return 0;
}
*/

// BOOL 형을 사용하는 소수 표를 생성하는 프로그램

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL isPrime;
        
        for (int p = 2; p <= 50; ++p) {
            isPrime = YES;
            
            for (int d = 2; d < p; ++d) {
                if (p % d == 0) {
                    isPrime = NO;
                }
            }
            
            if (isPrime == YES) {
                NSLog(@"%i ", p);
            }
        }
    }
    return 0;
}
