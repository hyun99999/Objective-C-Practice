//
//  main.m
//  Objective-C-ch5
//
//  Created by kimhyungyu on 2022/06/24.
//

#import <Foundation/Foundation.h>

// 삼각수 표를 생성하는 프로그램

/*
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
*/

// 사용자로부터 삼각수를 입력받아서 계산하는 프로그램

/*
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, triangularNumber;
        
        NSLog(@"What triangular number do you want?");
        scanf("%i", &number);
        
        triangularNumber = 0;
        
        for(int n = 1; n <= number; ++n) {
            triangularNumber += n;
        }
        
        NSLog(@"Triangular number %i is %i", number, triangularNumber);
    }
    
    return 0;
}
*/

// 두 개의 양의 정수에서 최대공약수를 찾는 프로그램
/*
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        unsigned int u, v, temp;
        
        NSLog(@"Please type in tow nonnegative integers.");
        scanf("%u%u", &u, &v);
        
        while(v != 0) {
            temp = u % v;
            u = v;
            v = temp;
        }
        
        NSLog(@"Their greatest common divisor is %u", u);
    }
    
    return 0;
}
*/

// 자릿수를 뒤집는 프로그램

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int number, right_digit;
        
        NSLog(@"Enter your number.");
        scanf("%i", &number);
        
        do {
            right_digit = number % 10;
            NSLog(@"%i", right_digit);
            number /= 10;
        } while(number != 0);
    }
    
    return 0;
}
