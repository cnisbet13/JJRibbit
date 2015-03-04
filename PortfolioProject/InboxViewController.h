//
//  InboxViewController.h
//  PortfolioProject
//
//  Created by Calvin Nisbet on 2015-02-23.
//  Copyright (c) 2015 Calvin Nisbet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@interface InboxViewController : UITableViewController


@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) PFObject *selectedMessage;


- (IBAction)logout:(id)sender;

@end
