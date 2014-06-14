//
//  PlayingCard.h
//  Matchismo
//
//  Created by Lamb on 14-6-12.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
@end
