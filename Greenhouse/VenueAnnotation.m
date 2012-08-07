//
//  Copyright 2010-2012 the original author or authors.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//
//  VenueAnnotation.m
//  Greenhouse
//
//  Created by Roy Clarkson on 7/27/10.
//

#import "VenueAnnotation.h"
#import "Venue.h"


@implementation VenueAnnotation

@synthesize venue = _venue;


#pragma mark -
#pragma mark Instance methods

- (id)initWithVenue:(Venue *)venue
{
	if ((self = [super init]))
	{
		self.venue = venue;
	}
	
	return self;
}


#pragma mark -
#pragma mark MKAnnotation methods

- (CLLocationCoordinate2D)coordinate
{
	if (_venue)
	{
		_coordinate = _venue.location.coordinate;
	}
	
	return _coordinate;
}

- (NSString *)title
{
	if (_venue)
	{
		return _venue.name;
	}
	
	return @"";
}

- (NSString *)subtitle
{
	if (_venue)
	{
		return _venue.locationHint;
	}
	
	return @"";
}


#pragma mark -
#pragma mark NSObject methods

- (void)dealloc
{
	[_venue release];
	
	[super dealloc];
}

@end