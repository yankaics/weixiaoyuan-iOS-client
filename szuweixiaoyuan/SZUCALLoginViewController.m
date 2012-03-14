//
//  SZUCALLoginViewController.m
//  szuweixiaoyuan
//
//  Created by mac pro on 12-3-14.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SZUCALLoginViewController.h"
#import "SZUCALTableViewController.h"
@interface SZUCALLoginViewController ()

@end

@implementation SZUCALLoginViewController
@synthesize xingming;
@synthesize xuehao;
@synthesize szuCALTableViewController;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)viewWillAppear:(BOOL)animated{
    [self.xingming becomeFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setXingming:nil];
    [self setXuehao:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)loginpressed:(UIButton *)sender {
    if (!self.szuCALTableViewController) {
        self.szuCALTableViewController = [[SZUCALTableViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    }
    [self.szuCALTableViewController setQ:[[NSString alloc] initWithFormat:@"%@%@%@",self.xingming.text,@"&xue_hao=",self.xuehao.text]];
    [self.navigationController pushViewController:self.szuCALTableViewController animated:YES];
}
@end
