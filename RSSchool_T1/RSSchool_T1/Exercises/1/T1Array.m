#import "T1Array.h"

@implementation T1Array

// Complete the following fuction
- (NSArray *)convertToHappy:(NSArray *)sadArray {
    
    NSMutableArray * mutableSadArray = [NSMutableArray arrayWithArray:sadArray];
        NSInteger bad = [self firstBadElement:sadArray];
        if (bad != -1) {
            [mutableSadArray removeObjectAtIndex: bad];
            return [self convertToHappy:[mutableSadArray copy]];
        } else {
            return sadArray;
        }
    }

    - (NSInteger)firstBadElement:(NSArray *)array {
        NSInteger retValue = -1;
         
        for (NSUInteger i = 0; i < array.count; i++) {
            NSInteger value = [[array objectAtIndex:i] intValue];

            NSInteger previousValue;
            if (i != 0 ) {
                previousValue = [[array objectAtIndex:i - 1] intValue];
            } else {
                continue;
            }

            NSInteger nextValue;
            if (i + 1 < array.count) {
                nextValue = [[array objectAtIndex:i + 1] intValue];
            } else {
                continue;
            }

            if (value > previousValue + nextValue) {
                retValue = i;
                return retValue;
            }
        }

        return retValue;
    }


@end
