//
//  Complex.m
//  Objective-C-ch9
//
//  Created by kimhyungyu on 2022/07/15.
//

#import "Complex.h"

// MARK: - Complex

@implementation Complex

//@synthesize real, imaginary;

- (void)print {
    NSLog(@" %g + %gi ", self.real, self.imaginary);
}

- (void)setReal:(double)a andImaginary:(double)b {
    self.real = a;
    self.imaginary = b;
}

- (Complex *)add:(Complex *)f {
    Complex *result = [Complex new];
    
    result.real = self.real + f.real;
    result.imaginary = self.imaginary + f.imaginary;
    
    return result;
}

@end
