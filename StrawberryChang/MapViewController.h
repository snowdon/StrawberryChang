//
//  MapViewController.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-9.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface MapViewController : UIViewController
<UIScrollViewDelegate>
{
    UIScrollView *imageScrollView;
    UIImageView *imageView;
}

@property (nonatomic, retain) IBOutlet UIScrollView *imageScrollView;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;



@end
