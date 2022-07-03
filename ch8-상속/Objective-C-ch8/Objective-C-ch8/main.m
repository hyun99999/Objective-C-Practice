//
//  main.m
//  Objective-C-ch8
//
//  Created by kimhyungyu on 2022/07/03.
//

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
