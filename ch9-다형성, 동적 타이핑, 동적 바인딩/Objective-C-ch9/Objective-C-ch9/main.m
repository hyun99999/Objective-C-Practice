//
//  main.m
//  Objective-C-ch9
//
//  Created by kimhyungyu on 2022/07/15.
//

#import "Complex.h"
#import "Fraction.h"

/*
 // 다형성
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // alloc: 객체의 데이터를 저장하기에 충분한 메모리 공간이 예약. 즉, 생성.
        // 객체의 모든 인스턴스 변수를 0으로 초기화.
        // init: 인스턴스 초기화. 초기화된 객체를 반환.
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
 */

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

/*
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
*/

/*
 2/5
 10 + 2.5i
 */

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
        
        //MARK: - isKindOf:
        
        if ([mySquare isKindOfClass:[Square class]] == YES)
            NSLog(@"mySquare is a kind of Square class");
        
        if ([mySquare isKindOfClass:[Rectangle class]] == YES)
            NSLog(@"mySquare is a kind of Rectangle class");
        
        if ([mySquare isKindOfClass:[NSObject class]] == YES)
            NSLog(@"mySquare is a kind of NSObject class");
        
        //MARK: - responsdsTo:
        
        if ([mySquare respondsToSelector:@selector(setSide:)] == YES)
            NSLog(@"mySquare responds to setSide: method");
        
        if ([mySquare respondsToSelector:@selector(setWidth:andHeight:)] == YES)
            NSLog(@"mySquare responds to setWidth:andHeight: method");
        
        if ([Square respondsToSelector:@selector(alloc)] == YES)
            NSLog(@"Square responds to alloc method");
        
        //MARK: - instancesRespondTo
        
        if ([Rectangle instancesRespondToSelector:@selector(setSide:)] == YES)
            NSLog(@"Instances of Rectangle respond to setSide: method");
        
        if ([Square instancesRespondToSelector:@selector(setSide:)] == YES)
            NSLog(@"Instances of Square respond to setSide: method");
        
        if ([Square isSubclassOfClass:[Rectangle class]] == YES)
            NSLog(@"Square is a subclass of a rectangle");
    }
}
