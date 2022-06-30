//
//  main.m
//  Objective-C-ch7
//
//  Created by kimhyungyu on 2022/06/30.
//

#import "Fraction/Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        
        myFraction.numerator = 1;
        myFraction.denominator = 2;
        
        // . 연산자는 프로퍼티에 사용하고, 메서드는 대괄호를 사용한 메시지 표현식을 쓰도록 선호되고 있다.
        NSLog(@"The numerator is %i, and denominator is %i", myFraction.numerator, myFraction.denominator);
        
        Fraction *aFraction = [[Fraction alloc] init];
        
        [aFraction setTo:100 over:200];
        [aFraction print];
    }
      
    return 0;
}
