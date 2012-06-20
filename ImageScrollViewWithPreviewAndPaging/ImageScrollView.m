//
//  ImageScrollView.m
//  ImageScrollViewWithPreviewAndPaging
//
//  Created by looyao teng on 12-6-20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ImageScrollView.h"

@implementation ImageScrollView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(38, 0, 244, 460)];
        _scrollView.clipsToBounds = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.pagingEnabled = YES;
        _scrollView.delegate = self;
        [self addSubview:_scrollView];
        
        for (int i = 1; i <= 5; i++) {
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", i]];
            UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake((i - 1) * 244 + 10, 38, 224, 322)];
            imageView.image = image;
            imageView.userInteractionEnabled = YES;
            [_scrollView addSubview:imageView];
        }
        
        [_scrollView setContentSize:CGSizeMake(244 * 5, 460)];
    }
    return self;
}

- (void)dealloc
{
    [_scrollView release];
    
    [super dealloc];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{    
    return _scrollView;
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    
}



@end
