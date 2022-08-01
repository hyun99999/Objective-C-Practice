//
//  main.m
//  Objective-C-ch10
//
//  Created by kimhyungyu on 2022/07/22.
//

#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a, *b, *c;
        c = [[Fraction alloc] init];
        a = [[Fraction alloc] initWith:1 over:3];
        b = [[Fraction alloc] initWith:3 over:7];
        
        [a print];
        [b print];
        [c print];  // -1/-1

    }
    return 0;
}

/*
// 외부 변수 사용 예제.

#import "Foo.h"

// 외부 변수 선언 및 정의.
// 정의는 딱 한 번만.
// 선언은 할당될 저장 공간을 만들지 않지만 정의에서는 공간을 만든다.
int gGlobalVar = 5;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Foo *myFoo = [[Foo alloc] init];
        NSLog(@"%i", gGlobalVar);
        // 5
        
        [myFoo setgGlobalVar:100];
        NSLog(@"%i", gGlobalVar);
        // 100
    }
    return 0;
}

// setgGlobalVar:

- (void)setgGlobalVar:(int)val {
    // 외부 변수에 접근하기 위해서 extern 키워드를 사용하여 선언.
    extern int gGlobalVar;
    gGlobalVar = val;
}
*/
