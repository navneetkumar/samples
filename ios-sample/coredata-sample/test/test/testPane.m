//
//  testPane.m
//  test
//
//  Created by Navneet Kumar on 29/06/15.
//  Copyright (c) 2015 Bluejeans. All rights reserved.
//

#import "testPane.h"

@implementation testPane

- (NSString *)title
{
	return [[NSBundle bundleForClass:[self class]] localizedStringForKey:@"PaneTitle" value:nil table:nil];
}

@end
