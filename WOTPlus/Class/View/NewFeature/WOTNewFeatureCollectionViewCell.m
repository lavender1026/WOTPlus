//
//  WOTNewFeatureCollectionViewCell.m
//  WOTPlus
//
//  Created by admin on 16/8/2.
//  Copyright © 2016年 DirkChen. All rights reserved.
//

#import "WOTNewFeatureCollectionViewCell.h"
#import <MediaPlayer/MediaPlayer.h>

@interface WOTNewFeatureCollectionViewCell ()

@property (nonatomic, weak) UIImageView *imageView;
@property (nonatomic, strong) MPMoviePlayerController *moviePlayer;

@end

@implementation WOTNewFeatureCollectionViewCell

//MARK:- lazy loading
- (UIImageView *)imageView
{
    if (!_imageView) {
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:self.moviePlayer.view.bounds];
        [self.moviePlayer.view addSubview:imageView];
        _imageView = imageView;
    }
    return _imageView;
}

- (MPMoviePlayerController *)moviePlayer
{
    if (!_moviePlayer) {
        MPMoviePlayerController *player = [[MPMoviePlayerController alloc]init];
        player.view.frame = self.contentView.frame;
        player.shouldAutoplay = NO;
        player.movieSourceType = MPMovieSourceTypeFile;
        player.controlStyle = MPMovieControlStyleNone;
        [self.contentView addSubview:player.view];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playerDisplayChange) name:MPMoviePlayerReadyForDisplayDidChangeNotification object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(playFinished) name:MPMoviePlayerPlaybackDidFinishNotification object:nil];
        _moviePlayer = player;
    }
    return _moviePlayer;
}
- (void)playerDisplayChange
{
    if (self.moviePlayer.readyForDisplay) {
        [self.moviePlayer.backgroundView addSubview:self.imageView];
    }
}
- (void)playFinished
{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"playFinished" object:nil];
}
//MARK:-setter
-(void)setMoviePath:(NSString *)moviePath
{
    _moviePath= [moviePath copy];
    self.moviePlayer.view.backgroundColor = [UIColor clearColor];
    self.moviePlayer.contentURL = [[NSURL alloc]initFileURLWithPath:moviePath];
    [self.moviePlayer prepareToPlay];
    [self.moviePlayer play];
}

- (void)setStartImage:(UIImage *)startImage
{
    _startImage = startImage;
    self.imageView.image = startImage;
}
-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
@end
