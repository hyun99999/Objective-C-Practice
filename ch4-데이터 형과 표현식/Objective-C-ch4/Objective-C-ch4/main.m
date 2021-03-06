//
//  main.m
//  Objective-C-ch4
//
//  Created by kimhyungyu on 2022/06/18.
//

#import "Calculator/Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int intergerVar = 100;
        float floatingVar = 331.79;
        double doubleVar = 8.44e+11;
        char charVar = 'W';
        
        // intergerVar = 100
        NSLog(@"intergerVar = %i", intergerVar);
        // floatingVar = 331.790009
        NSLog(@"floatingVar = %f", floatingVar);
        // doubleVar = 8.440000e+11
        NSLog(@"doubleVar = %e", doubleVar);
        // doubleVar = 8.44e+11
        NSLog(@"doubleVar = %g", doubleVar);
        // charVar = W
        NSLog(@"charVar = %c", charVar);
        
        // 51
        NSLog(@"%i", (int)(29.55 + 21.99));
        // 50
        NSLog(@"%i", (int)29.55 + (int)21.99);
        
        //MARK: - Calculator
        
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator:100.0];
        [deskCalc add:200.];
        [deskCalc divide:15.0];
        [deskCalc subtract:10.0];
        // double 로 형변환 됨.
        [deskCalc multiply:5];
        
        // The result is 50
        NSLog(@"The result is %g", [deskCalc accumulator]);
    }
    return 0;
}
