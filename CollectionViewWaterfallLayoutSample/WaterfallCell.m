//
//  WaterfallCell.m
//  CollectionViewWaterfallLayoutSample
//
//  Created by MORITA NAOKI on 2014/04/29.
//  Copyright (c) 2014年 molabo. All rights reserved.
//

#import "WaterfallCell.h"

@implementation WaterfallCell

- (void)dealloc {
	[_titleLabel removeFromSuperview];
	_titleLabel = nil;
}

- (id)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
		[self.contentView addSubview:self.displayLabel];
	}
	return self;
}

#pragma mark - Accessors
- (UILabel *)displayLabel {
	if (!_titleLabel) {
		_titleLabel = [[UILabel alloc] initWithFrame:self.contentView.bounds];
		_titleLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
		_titleLabel.backgroundColor = [UIColor lightGrayColor];
		_titleLabel.textColor = [UIColor whiteColor];
		_titleLabel.textAlignment = NSTextAlignmentCenter;
	}
	return _titleLabel;
}

@end
