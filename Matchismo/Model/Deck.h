//
//  Deck.h
//  Matchismo
//
//  Created by Lamb on 14-6-12.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "Card.h"

@interface Deck : Card
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;
@end
