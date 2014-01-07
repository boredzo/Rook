//
//  PRHViewController.m
//  Bishop
//
//  Created by Peter Hosey on 2014-01-07.
//  Copyright (c) 2014 Peter Hosey. All rights reserved.
//

#import "PRHViewController.h"
#import "NSString+Glyphs.h"
#import <QuartzCore/QuartzCore.h>

@interface PRHViewController ()

@end

@implementation PRHViewController

- (void) viewDidLoad {
	[super viewDidLoad];

	CALayer *layer = self.view.layer;
	layer.backgroundColor = [UIColor grayColor].CGColor;

	UIBezierPath *path = [@"\u2656" bezierPathWithFont:[UIFont fontWithName:@"Helvetica" size:200.0]];
	CAShapeLayer *shapeLayer = [CAShapeLayer new];
	shapeLayer.path = path.CGPath;
	shapeLayer.bounds = path.bounds;
	shapeLayer.position = (CGPoint){ layer.bounds.size.width / 2.0, layer.bounds.size.height / 2.0 };
	shapeLayer.fillColor = [UIColor whiteColor].CGColor;
	shapeLayer.fillRule = kCAFillRuleEvenOdd;
	shapeLayer.strokeColor = [UIColor blackColor].CGColor;
	[layer addSublayer:shapeLayer];
}

- (void) didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
