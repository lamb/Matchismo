//
//  Card.h
//  Matchismo
//
//  Created by Lamb on 14-6-12.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;
- (int)match:(NSArray *)otherCards;
@end
