//
//  InboxViewController.m
//  PortfolioProject
//
//  Created by Calvin Nisbet on 2015-02-23.
//  Copyright (c) 2015 Calvin Nisbet. All rights reserved.
//

#import "InboxViewController.h"

#import <Parse/Parse.h>

@implementation InboxViewController


-(void)viewDidLoad
{
    [super viewDidLoad];

    
    PFUser *currentUser = [PFUser currentUser];
    if (currentUser) {
        NSLog(@"Current User: %@", currentUser.username);
    }
    [self performSegueWithIdentifier:@"showLogin" sender:self];
}



- (IBAction)logout:(id)sender {
    
    [PFUser logOut];
    [self performSegueWithIdentifier:@"showLogin" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showLogin"]) {
        [segue.destinationViewController setHidesBottomBarWhenPushed:YES];
    }
}


@end
