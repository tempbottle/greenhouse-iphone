    //
//  EventTweetsViewController.m
//  Greenhouse
//
//  Created by Roy Clarkson on 7/13/10.
//  Copyright 2010 VMware, Inc. All rights reserved.
//

#import "EventTweetsViewController.h"


@implementation EventTweetsViewController

@synthesize event;

- (void)refreshData
{
	// must make this assignment for parent class to work correctly
	self.hashtag = event.hashtag;
	
	NSString *urlString = [NSString stringWithFormat:EVENT_TWEETS_URL, event.eventId];
	[self fetchJSONDataWithURL:[NSURL URLWithString:urlString]];
}


#pragma mark -
#pragma mark UIViewController methods

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	
	[self refreshData];
}

- (void)viewDidUnload 
{
    [super viewDidUnload];

	self.event = nil;
}


#pragma mark -
#pragma mark NSObject methods

- (void)dealloc 
{
	[event release];
	
    [super dealloc];
}


@end