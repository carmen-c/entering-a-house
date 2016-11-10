//
//  ViewController.m
//  Entering A House
//
//  Created by carmen cheng on 2016-11-09.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UINavigationItem *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIBarButtonItem *out = [[UIBarButtonItem alloc]initWithTitle:@"out" style:UIBarButtonItemStylePlain target:self action:@selector(goOut)];
    
    self.navigationItem.rightBarButtonItem = out;
    
}

-(void) goOut{
    UIViewController *out = [self.storyboard instantiateViewControllerWithIdentifier:@"frontDoor"];
    [self.navigationController presentViewController:out animated:YES completion:nil];
}

@end
