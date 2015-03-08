//
//  Lol.m
//  Simily
//
//  Created by Chris Li on 3/7/15.
//  Copyright (c) 2015 Simily. All rights reserved.
//

#import "Lol.h"

@implementation Lol

+(void)refreshCollectionView:(UICollectionView*)cv source:(NSArray *)datasource {
    NSIndexPath *ip = [NSIndexPath indexPathForRow:datasource.count-1 inSection:0];
    [cv insertItemsAtIndexPaths:@[ip]];
    [cv scrollToItemAtIndexPath:ip atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
}

@end
