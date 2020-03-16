#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

// Complete the convertFromArray function below.
- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
  
    NSMutableArray *arrays = [NSMutableArray new];
    NSMutableArray *sums = [NSMutableArray new];

    
    
    for (NSUInteger i = 0; i < array.count; i++) {
        NSMutableArray *arr = [NSMutableArray arrayWithArray:array];
        [arr removeObjectAtIndex:i];
        [arrays addObject:arr];
    }
    
    
    for (NSMutableArray *arrayOfInt in arrays){
        
        NSInteger sum = 0;
        
        for (NSNumber *numb in arrayOfInt){
         sum += [numb integerValue];
        }
        
        [sums addObject:[NSNumber numberWithInteger:sum]];
    }
    
    NSInteger min = [[sums objectAtIndex:0] integerValue];
    NSInteger max = [[sums objectAtIndex:0] integerValue];
    
    for (NSUInteger i = 0; i < sums.count; i++) {
    
   NSInteger newValue = [[sums objectAtIndex:i] integerValue];
   if (newValue > max) {
       max = newValue;
   }
   if (newValue < min) {
       min = newValue;
   }

   }
    
    return @[@(min), @(max)];
}

@end
    
