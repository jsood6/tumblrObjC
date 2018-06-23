//
//  DetailsViewController.h
//  tumblrObjC
//
//  Created by jsood on 6/22/18.
//  Copyright © 2018 Jigyasaa Sood. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@property (nonatomic, strong) NSDictionary * post;

@end
