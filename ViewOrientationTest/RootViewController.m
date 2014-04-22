//
//  RootViewController.m
//  ViewOrientationTest
//
//  Created by 이승환 on 2014. 4. 22..
//
//

#import "RootViewController.h"
#import "SecondViewController.h"

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

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSUInteger)supportedInterfaceOrientations
{
//    NSLog(@"%s invoked", __func__);
    
    return UIInterfaceOrientationMaskPortrait;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
//    NSLog(@"%s , interfaceOrientation : %d", __func__, interfaceOrientation);
    
    return (UIInterfaceOrientationPortrait == interfaceOrientation);
}

- (IBAction)tapGoSecond:(id)sender
{
    SecondViewController *ctrl = [[SecondViewController alloc] initWithNibName:NSStringFromClass([SecondViewController class]) bundle:nil];
    [self.navigationController pushViewController:ctrl animated:YES];
}

@end
