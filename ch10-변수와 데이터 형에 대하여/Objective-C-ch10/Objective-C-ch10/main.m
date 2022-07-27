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
