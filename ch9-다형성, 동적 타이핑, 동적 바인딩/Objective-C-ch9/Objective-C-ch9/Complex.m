//
//  Complex.m
//  Objective-C-ch9
//
//  Created by kimhyungyu on 2022/07/15.
//

#import "Complex.h"

// MARK: - Complex

@implementation Complex

// Xcode 4.5 부터 @synthesize를 사용하지 않아도 @property 지시어만으로도 자동으로 세터와 게터를 생성해줄 수 있다.
// 해당 인스턴스 변수들은 self. 혹은 _ 을 통해서 사용이 가능하다.
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
