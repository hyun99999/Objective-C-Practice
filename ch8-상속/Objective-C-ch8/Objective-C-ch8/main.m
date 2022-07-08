//
//  main.m
//  Objective-C-ch8
//
//  Created by kimhyungyu on 2022/07/03.
//


#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:100 andY:200];
        
        [myRect setWidth:5 andHeight:8];
        myRect.origin = myPoint;
//        다음의 표현식을 사용하는 것과 동일하다. origin 을 @property 로 선언하지 않아도 setOrigin 메서드가 있다면 위와 같은 표현식도 가능하다.
//        [myRect setOrigin:myPoint]
        
        NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
        NSLog(@"Origin: at (%i, %i)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area: %i, Permineter = %i", [myRect area], [myRect perimeter]);
        
        [myPoint setX:50 andY:50];
        
        NSLog(@"Origin: at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        XYPoint *theOrigin = myRect.origin;
        theOrigin.x = 200;
        theOrigin.y = 300;
        
        // setter 와 마찬가지로 getter 역시 누구든 theOrigin 의 원점 객체를 바꾸면 myRect 의 값도 바뀌는 것을 볼 수 있다.
        // origin getter 메서드를 수정해보자.
        NSLog(@"theOrigin: at (%i, %i)", myRect.origin.x, myRect.origin.y);
        
        Square *mySquare = [[Square alloc] init];
        
        [mySquare setSide:5];
        
        NSLog(@"Square s = %i", [mySquare side]);
        NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
    }
    return 0;
}

/*
#import <Foundation/Foundation.h>

//MARK: - Class A

@interface ClassA : NSObject {
    int x;
}

- (void)initVar;

@end

@implementation ClassA

- (void)initVar {
    x = 100;
}

@end

//MARK: - Class B

@interface ClassB : ClassA

- (void)printVar;

@end

@implementation ClassB

- (void)printVar {
    NSLog(@"x = %i", x);
}

@end

//MARK: - main

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassB *b = [[ClassB alloc] init];
        
        [b initVar];
        [b printVar];
    }
    return 0;
}
*/
