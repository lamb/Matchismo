//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Lamb on 14-6-12.
//  Copyright (c) 2014年 CS193p. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"

@interface CardGameViewController ()
//@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) CardMatchingGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtions;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@end

@implementation CardGameViewController
-(CardMatchingGame *)game{
    if (!_game) {
        _game = [[CardMatchingGame alloc] initWithCardCount:[self.cardButtions count] usingDeck:[self creatDeck]];
    }
    return _game;
}

//abstract
- (Deck *) creatDeck{
    return nil;
}

- (IBAction)touchCardButtontouchCardButtonUIButton:(UIButton *)sender {
    int cardIndex = [self.cardButtions indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
}

-(void)updateUI{
    for (UIButton *cardButtion in self.cardButtions) {
        int cardIndex = [self.cardButtions indexOfObject:cardButtion];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButtion setTitle:[self titleForCard:card] forState:UIControlStateNormal];
        [cardButtion setBackgroundImage:[self backgroundImageForCard:card] forState:UIControlStateNormal];
        cardButtion.enabled = !card.isMatched;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
}

-(NSString *)titleForCard:(Card *)card{
    return card.isChosen ? card.contents : @"";
}

-(UIImage *)backgroundImageForCard:(Card *)card{
    return [UIImage imageNamed:card.isChosen ? @"cardfront" : @"cardback"];
}
@end
