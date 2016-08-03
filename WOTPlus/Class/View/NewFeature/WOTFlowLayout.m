//
//  WOTFlowLayout.m
//  WOTPlus
//
//  Created by admin on 16/8/2.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTFlowLayout.h"

@implementation WOTFlowLayout

-(void)prepareLayout
{
    [super prepareLayout];
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.minimumLineSpacing = 0 ;
    self.minimumInteritemSpacing = 0 ;
    self.itemSize = self.collectionView.bounds.size;
    
    self.collectionView.showsVerticalScrollIndicator = NO;
    self.collectionView.showsHorizontalScrollIndicator = NO;
    self.collectionView.bounces = NO;
    self.collectionView.pagingEnabled = YES;
}
@end
