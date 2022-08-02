//
//  main.m
//  Objective-C-ch10
//
//  Created by kimhyungyu on 2022/07/22.
//

/*
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a, *b, *c;
        
        // 다른 정적 변수와 같이 0 이외의 값을 설정하고 싶다면 init 을 재정의 하면 된다.
        NSLog(@"Fractions allocataed: %i", [Fraction count]);
        // Fractions allocataed: 0
        
        c = [[Fraction allocF] init];
        a = [[Fraction allocF] initWith:1 over:3];
        b = [[Fraction allocF] initWith:3 over:7];
        
        [a print];
        [b print];
        [c print];  // -1/-1

        NSLog(@"Fractions allocated: %i", [Fraction count]);
        // Fractions allocataed: 3
    }
    return 0;
}
 */

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

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        enum month { january = 1, february, march, april, may, june, july, august, september, october, november, december };
        enum month amonth;
        int days;
        
        NSLog(@"Enter month number: ");
        scanf("%i", &amonth);
        
        switch (amonth) {
            case january:
            case march:
            case may:
            case july:
            case august:
            case october:
            case december:
                days = 31;
                break;
            case april:
            case june:
            case september:
            case november:
                days = 30;
                break;
            case february:
                days = 28;
                break;
            default:
                NSLog(@"bad month number");
                days = 0;
                break;
        }
        
        if (days != 0) {
            NSLog(@"Number of days is %i", days);
        }
        
        if (amonth == february) {
            NSLog(@"...or 29 if it's a leap year");
        }
        
        return 0;
    }
}

