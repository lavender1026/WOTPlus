//
//  WOTNewFeatureCollectionViewController.m
//  WOTPlus
//
//  Created by admin on 16/8/2.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTNewFeatureCollectionViewController.h"
#import "WOTFlowLayout.h"
#import "WOTNewFeatureCollectionViewCell.h"

@interface WOTNewFeatureCollectionViewController ()
@property (nonatomic, strong) UIPageControl *pageControl;
@property(nonatomic,assign,getter=isMovieFinished) BOOL movieFinished;


@end

@implementation WOTNewFeatureCollectionViewController

static NSString * const reuseIdentifier = @"NewFeatureCell";



-(instancetype)init
{
    return [super initWithCollectionViewLayout:[[WOTFlowLayout alloc]init]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
 }
- (void)setup
{
    
    [self.collectionView registerClass:[WOTNewFeatureCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    

}

#pragma mark <UICollectionViewDataSource>



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.guideImagesArr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    WOTNewFeatureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    cell.moviePath = self.guideMoviePathArr[indexPath.row];
    cell.startImage = [UIImage imageNamed:self.guideImagesArr[indexPath.row]];
    
    
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark <UICollectionViewDelegate>
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == self.guideImagesArr.count-1 && self.isMovieFinished) {
        if (self.lastPlayFinished) {
            self.lastPlayFinished();
        }
    }
}
/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
