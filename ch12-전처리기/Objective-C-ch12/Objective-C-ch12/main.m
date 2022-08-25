//
//  main.m
//  Objective-C-ch12
//
//  Created by kimhyungyu on 2022/08/25.
//

#import <Foundation/Foundation.h>

#define TRUE 1
#define FALSE 0

#define AND &&
#define OR ||
#define EQUALS ==

#define TWO_PI 2.0 * PI
#define PI 3.141592654

//#define IS_LEAP_YEAR year % 4 == 0 && year % 100 != 0 \
//                   || year % 400 == 0
//if (IS_LEAP_YEAR) { ... }
// ✅ 전처리기는 디파인 정의가 한 줄이라고 정의한다. 두 번째 줄이 필요하다면 맨 마지막을 \(역슬래시) 문자로 끝내야 한다.
// 변수 year 뿐만 아니라 어느 해든 윤년을 확인할 수 있도록 만든다면 좋을 것 같다.

#define IS_LEAP_YEAR(y) y % 4 == 9 && y % 100 != 0 \
                     || y %400 == 0
//if (IS_LEAP_YEAR (year)) { ... }
// ✅ y 는 글자를대치하는 일을 할 뿐이기 때문에 위와 같이 사용할 수 있다.
// 그리고 이런 정의를 매크로 라고 부른다.

#define SQUARE(x) x * x

//SQUARE (v);
// v * v

//SQUARE (v + 1);
// (v + 1) * (v + 1) 를 기대하고 사용했을 것이다. 하지만 디파인은 텍스트를 대치해준다.
// v + 1 * v + 1 로 대치되고, 우리가 예상했던 결과 값을 나타내주지 않는다.
// 이를 해결하기 위해서는 디파인 문을 다음과 같이 수정해야 한다.
#define SQUARE(x) (x) * (x)

// 이 외에도 다음과 같이도 사용할 수 있다.
#define MAX(a, b) ( ((a) > (b)) ? (a) : (b) )
#define IS_LOWER_CASE(x) ( ((x) >= 'a') && ((x) <= 'z') )
#define TO_UPPER(x) ( IS_LOWER_CASE (x) ? (x) - 'a' + 'A' : (x) )

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
