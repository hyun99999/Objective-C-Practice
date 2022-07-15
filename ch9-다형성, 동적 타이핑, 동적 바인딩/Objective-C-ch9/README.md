***본 포스팅은 ‘프로그래밍 오브젝티브-C 2.0’ 을 읽으며 실습한 코드와 내용, 추가적으로 궁금한 내용을 정리한 글입니다.***

### 내용

- 다형성은 다른 클래스의 객체들이 동일한 메서드 이름을 사용할 수 있도록 해준다.
- 동적 타이핑은 객체가 속한 클래스를 알아내는 단계를 프로그램이 실행될 때로 미룬다.
- 동적 바인딩은 객체에 호출되는 실제 메서드를 알아내는 프로그램 실행 중으로 미룬다.

## 시작하기

코드를 준비해보자.

- Fraction.h

```objectivec
#import <Foundation/Foundation.h>

// MARK: -  Fraction Class

// interface 부분은 클래스를 다른 파일에서 사용할 때 컴파일러가 필요로 하는 모든 정보를 담고 있다.

@interface Fraction : NSObject

@property int numerator, denominator;
- (void)print;
- (double)convertToNum;
- (void)setTo:(int)n over:(int) d;
- (Fraction *)add:(Fraction *)f;
- (void)reduce;

@end
```

- Fraction.m

```objectivec
// 꺾쇠가 아닌 큰 따옴표로 로컬 파일을 임포트한다.

#import "Fraction.h"

// MARK: -  Fraction Class

@implementation Fraction

// synthesize 는 프로퍼티에 해당하는 getter, setter 메서드를 생성하도록 지시한다.
// 컴파일러가 작성한 접근자 메서드는 효율적이고, 다중 스레드, 다양한 시스템, 다중 코어 환경에서 좀 더 안전하게 작동합니다.
//@synthesize numerator, denominator;

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

/// 최대 공약수로 약분.
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
```

- Complex.h

```objectivec
#import <Foundation/Foundation.h>

// MARK: -  Complex

@interface Complex : NSObject

@property double real, imaginary;
// - 부호는 인스턴스 메서드.
// + 부호는 클래스 메서드
- (void)print;
- (void)setReal:(double)a andImaginary:(double)b;
- (Complex *)add:(Complex *)f;

@end
```

- Complex.m

```objectivec
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
```

## 다형성

**다형성은 다른 클래스의 객체들이 동일한 메서드 이름을 사용할 수 있도록 해준다.**

```objectivec
#import "Complex.h"
#import "Fraction.h"

 // 다형성
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // - alloc: 객체의 데이터를 저장하기에 충분한 메모리 공간이 예약. 즉, 생성.
        // 객체의 모든 인스턴스 변수를 0으로 초기화.
        // - init: 인스턴스 초기화. 초기화된 객체를 반환.
        // Fraction *f1 = [[Fraction alloc] init];
        // alloc 과 init 을 결합한 new.
        Fraction *f1 = [Fraction new];
        Fraction *f2 = [[Fraction alloc] init];
        Fraction *fracResult;
        
        Complex *c1 = [[Complex alloc] init];
        Complex *c2 = [[Complex alloc] init];
        Complex *compResult;
        
        [f1 setTo:1 over:10];
        [f2 setTo:2 over:15];
        
        [c1 setReal:18 andImaginary:2.5];
        [c2 setReal:-5.0 andImaginary:3.2];
        
        // 두 개의 복소수를 더하고 결과를 표시한다.
        [c1 print];
        NSLog(@"         +");
        [c2 print];
        NSLog(@"----------");
        compResult = [c1 add:c2];
        [compResult print];
        NSLog(@"\n");
        
        // 두 개의 분수를 더하고 결과를 표시한다.
        [f1 print];
        NSLog(@"   +");
        [f2 print];
        NSLog(@"----");
        fracResult = [f1 add:f2];
        [fracResult print];
    }
    return 0;
}

/*
 
  18 + 2.5i
          +
  -5 + 3.2i
  ----------
  13 + 5.7i

 1/10
    +
 2/15
 ----
 7/30
 
*/
```

## 동적 바인딩과 동적 타이핑

- **동적 바인딩은 객체에 호출되는 실제 메서드를 알아내는 프로그램 실행 중으로 미룬다.**
- **동적 타이핑은 객체가 속한 클래스를 알아내는 단계를 프로그램이 실행될 때로 미룬다.**

```objectivec
// 동적 바인딩
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // id 형
        // 어느 클래스의 객체든 저장할 수 있다.
        // id 타입의 변수에는 . 연산자를 사용할 수 없다. 
        id dataValue;
        Fraction *f1 = [[Fraction alloc] init];
        Complex *c1 = [[Complex alloc] init];
        
        [f1 setTo:2 over:5];
        [c1 setReal:10 andImaginary:2.5];
        
        // dataValue 에게 분수를 대입.
        dataValue = f1;
        // 컴파일 말고 런타임에 객체의 클래스에 대해서 앎.
        [dataValue print];
        
        // dataValue 에게 복소수를 대입.
        dataValue = c1;
        // 런타임 에러 발생.(setTo:over: 는 Fraction 클래스의 인스턴스 메서드이다.)
//        [dataValue setTo:1 over:1];
        [dataValue print];
    }
    
    return  0;
}

/*
 2/5
 10 + 2.5i
 */
```

다형성과 동적 바인딩, 동적 타이핑을 결합하면 다른 클래스의 객체에 동일한 메시지를 보내는 코드를 쉽게 작성할 수 있다. 

예를 들어 스크린에 그래픽 객체를 칠해주는 draw 라는 메서드를 생각해보면 원, 사각형, 타원과 같은 그래픽 객체마다 다른 draw 메서드가 정의되어 있을 것이다. 이들 객체를 id 형 변수에 저장하면 손 쉽게 사용가능하다.

```objectivec
[currentObject draw];
```

## 정적 타이핑

특정 클래스의 객체로 변수를 정의하는 것이다. 

**정적 타이핑을 쓸 필요가 있을까?**

- 컴파일러는 이를 통해 객체에 적용되는 메서드가 그 클래스에 의해 정의되거나 상속되었는지 확인할 수 있고 변수를 일관성있고 최고 성능을 내게 한다.
- 요류를 컴파일 단계에서 잡아내는 편이 런타임에 잡아내는 것보다 낫기 때문이다. 런타임 시까지 미루면 다른 사람이 프로그램을 사용하다가 오류를  볼 수도 있다.
- 가독성을 높여준다.

## 클래스에 대해 질문하기

id 형에서 다른 클래스의 객체에 담긴 변수들을 다루기 시작하면 이 객체가 사각형인지? 원인지? print 메서드를 지원하는지? 그래픽 클래스의 멤버 혹은 그 자식 클래스의 멤버인지? 에 대한 질문을 해야할 때가 온다.

- 앞서 공부했던 Square, Rectangle, XYPoint 코드를 추가한 채로 main 을 작성해보겠습니다.

```objectivec
#import "Graphics/Square.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Square *mySquare = [[Square alloc] init];
        
        //MARK: - isMemberOf:
        
        if ([mySquare isMemberOfClass:[Square class]] == YES)
            NSLog(@"mySquare is a member of Square class");
        
        if ([mySquare isMemberOfClass:[Rectangle class]] == YES)
            NSLog(@"mySquare is a member of Rectangle class");
        
        if ([mySquare isMemberOfClass:[XYPoint class]] == YES)
            NSLog(@"mySquare is a member of XYPoint class");

// mySquare is a member of Square class
     
        //MARK: - isKindOf:
        
        if ([mySquare isKindOfClass:[Square class]] == YES)
            NSLog(@"mySquare is a kind of Square class");
        
        if ([mySquare isKindOfClass:[Rectangle class]] == YES)
            NSLog(@"mySquare is a kind of Rectangle class");
        
        if ([mySquare isKindOfClass:[NSObject class]] == YES)
            NSLog(@"mySquare is a kind of NSObject class");
        
// mySquare is a kind of Square class
// mySquare is a kind of Rectangle class
// mySquare is a kind of NSObject class   

        //MARK: - responsdsTo:
        
        if ([mySquare respondsToSelector:@selector(setSide:)] == YES)
            NSLog(@"mySquare responds to setSide: method");
        
        if ([mySquare respondsToSelector:@selector(setWidth:andHeight:)] == YES)
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        
        if ([Square respondsToSelector:@selector(alloc)] == YES)
            NSLog(@"Square responds to alloc method");
        
// mySquare responds to setSide: method
// mySquare responds to setWidth:andHeight: method
// Square responds to alloc method

        //MARK: - instancesRespondTo
        
        if ([Rectangle instancesRespondToSelector:@selector(setSide:)] == YES)
            NSLog(@"Instances of Rectangle respond to setSide: method");
        
        if ([Square instancesRespondToSelector:@selector(setSide:)] == YES)
            NSLog(@"Instances of Square respond to setSide: method");
        
        if ([Square isSubclassOfClass:[Rectangle class]] == YES)
            NSLog(@"Square is a subclass of a rectangle");

// Instances of Square respond to setSide: method
// Square is a subclass of a rectangle
    }
    return 0;
}
```

## @try 사용하여 예외 처리하기

```objectivec
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // - array: 비어있는 배열을 만들고 반환.
        NSArray *myArray = [NSArray array];
        
        @try {
            [myArray objectAtIndex:2];
        } @catch (NSException *exception) {
            NSLog(@"Caught %@%@", exception.name, exception.reason);
        } @finally {
            // Code that gets executed whether or not an exception is thrown
        }
        
        NSLog(@"Execution continues");
    }
}

/*
 Caught NSRangeException*** -[__NSArray0 objectAtIndex:]: index 2 beyond bounds for empty NSArray
 Execution continues
*/
```
