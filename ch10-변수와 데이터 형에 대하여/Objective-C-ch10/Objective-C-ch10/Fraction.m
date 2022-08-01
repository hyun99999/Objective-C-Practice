//
//  Fraction.m
//  Objective-C-ch10
//
//  Created by kimhyungyu on 2022/07/22.
//

#import "Fraction.h"

// MARK: -  Fraction Class

// ✅ 정적변수
static int gCounter;

@implementation Fraction

// ✅ alloc 은 물리적인 메모리 할당을 다루는 메서드이기 때문에, 이를 재정의하는 것은 좋지 않은 프로그래밍 습관이다.
/// ✅ alloc 메서드를 재정의하는 대신 상속받아 사용.
+ (Fraction *)allocF {
    // 정적변수가 동일한 파일에 선언되어있기 때문에 extern 키워드를 사용하지 않아도 된다.
    // 선언하더라도 메서드를 읽는 사람이 메서드 바깥에서 변수가 정의되어있다는 것을 좀 더 빨리 이해할 뿐이다.
    // 변수 이름의 g 역시 읽는 사람을 배려한 네이밍이다.
    extern int gCounter;
    ++gCounter;
    
    return [Fraction alloc];
}

// ✅ 생성한 객체의 개수를 추적하는 gCounter 를 반환하는 클래스 메서드.
+ (int)count {
    extern int gCounter;
    
    return gCounter;
}

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
