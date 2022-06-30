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
        
        NSLog(@"The numerator is %i, and denominator is %i", myFraction.numerator, myFraction.denominator);
    }
      
    return 0;
}
