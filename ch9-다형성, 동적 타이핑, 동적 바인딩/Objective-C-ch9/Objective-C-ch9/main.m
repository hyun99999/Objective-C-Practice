//
//  main.m
//  Objective-C-ch9
//
//  Created by kimhyungyu on 2022/07/15.
//

#import "Complex.h"
#import "Fraction.h"

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
