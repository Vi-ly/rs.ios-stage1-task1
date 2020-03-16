#import "BillCounter.h"

@implementation BillCounter

// Complete the following fuction
- (NSString*)compareResultForBill:(NSArray<NSNumber*>*)bill notIncludingElementWithIndex:(NSInteger)index withGivenSum:(NSNumber*)sum {
    
    NSMutableArray *anna = [NSMutableArray arrayWithArray: bill];
    for (NSUInteger i=0; i<anna.count; i++){
        if (i == index) {
            [anna removeObjectAtIndex:index];
        }
    }
    
    NSInteger annaSum = 0;
    for (NSNumber *number in anna){
     annaSum += [number integerValue];
    }
    
    NSInteger raznica = sum.integerValue -  (annaSum / 2 );
        
        if (raznica == 0) {
            return @"Bon Appetit";

        } else {
            return [NSString stringWithFormat:@"%ld", raznica];

        }
        

    }
    @end


