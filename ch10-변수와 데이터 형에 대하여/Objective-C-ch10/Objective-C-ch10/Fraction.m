//
//  Fraction.m
//  Objective-C-ch10
//
//  Created by kimhyungyu on 2022/07/22.
//

#import "Fraction.h"

// MARK: -  Fraction Class

@implementation Fraction

// 클래스의 이름을 하드코딩하지 않는다.
// 서브 클래스의 객체가 부모 클래스와 다를 수 있기 때문이다.
- (id) init {
    // 확인을 위해서 -1 로 초기화.
    return [self initWith:-1 over:-1];
}

// 일관성을 위해 지정된 초기화 메서드도 id 로 반환타입을 변경했다.
// 지정된 초기화 메서드. Designated Initializer.
- (id) initWith:(int)n over:(int)d {
    self = [super init];
    
    if (self)
        [self setTo:n over:d];
        
    return self;
}

- (void)print {
    NSLog(@"%i/%i", self.numerator, self.denominator);
}

- (double)convertToNum {
    if (_denominator != 0)
        return (double)_numerator / _denominator;
    else
        return NAN;
}

- (void)setTo:(int)n over:(int)d {
    self.numerator = n;
    self.denominator = d;
}

- (Fraction *)add:(Fraction *)f {
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = self.numerator * f.denominator + self.denominator * f.numerator;
    result.denominator = self.denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

- (void)reduce {
    // 정적 변수는 초깃값이 0이다.
    int u = self.numerator;
    int v = self.denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    self.numerator /= u;
    self.denominator /= u;
}

@end
