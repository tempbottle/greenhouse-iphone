//
//  EventSessionSummaryViewController.h
//  Greenhouse
//
//  Created by Roy Clarkson on 7/26/10.
//  Copyright 2010 VMware. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventSession.h"


@interface EventSessionSummaryViewController : UIViewController 
{

}

@property (nonatomic, retain) EventSession *session;
@property (nonatomic, retain) IBOutlet UITextView *textViewSummary;

@end
