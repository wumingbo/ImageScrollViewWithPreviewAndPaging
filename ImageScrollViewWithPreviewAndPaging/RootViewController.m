//
//  RootViewController.m
//  ImageScrollViewWithPreviewAndPaging
//
//  Created by looyao teng on 12-6-20.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "ImageScrollView.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)loadView
{
    self.view = [[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)] autorelease];
    self.view.backgroundColor = [UIColor blackColor];
    
    ImageScrollView *imageScrollView = [[[ImageScrollView alloc] initWithFrame:self.view.frame] autorelease];
    [self.view addSubview:imageScrollView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
