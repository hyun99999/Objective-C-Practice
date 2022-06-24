//
//  main.m
//  Objective-C-ch5
//
//  Created by kimhyungyu on 2022/06/24.
//

#import <Foundation/Foundation.h>

// 삼각수 표를 생성하는 프로그램

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n, triangularNumber;
        
        NSLog(@"TABLE OF TRIANGULAR NUMBERS");
        NSLog(@"N Sum from 1 to n");
        NSLog(@"-- ----------------");
        
        triangularNumber = 0;
        
        for(n = 1; n <= 10; n++) {
            triangularNumber += n;
            NSLog(@"%2i       %i", n, triangularNumber);
        }
    }
    return 0;
}
