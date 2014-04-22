//
//  TMSNavigationController.m
//  ViewOrientationTest
//
//  Created by 이승환 on 2014. 4. 22..
//
//

#import "TMSNavigationController.h"

@interface TMSNavigationController ()

@end

@implementation TMSNavigationController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSUInteger)supportedInterfaceOrientations
{
    NSUInteger supportedOrientations = [self.topViewController supportedInterfaceOrientations];
    
    NSLog(@"%s viewControllers : %@ supportedOrientations : %u\n\n\n", __func__, self.viewControllers, supportedOrientations);
    
    return supportedOrientations;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    BOOL shouldRotate = [self.topViewController shouldAutorotateToInterfaceOrientation:interfaceOrientation];

    NSLog(@"%s , shouldRotate : %d", __func__, shouldRotate);
    
    return shouldRotate;
}


@end
