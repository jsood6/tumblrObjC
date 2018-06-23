//
//  DetailsViewController.m
//  tumblrObjC
//
//  Created by jsood on 6/22/18.
//  Copyright © 2018 Jigyasaa Sood. All rights reserved.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDictionary * post = self.post;
    NSArray * photos = post[@"photos"];
    
    //not all posts have photos, so we have to check for empty photos array
    if(photos){
        NSDictionary * photo = photos[0];
        // 2. Get the original size dictionary from the photo
        NSDictionary *originalSize =  photo[@"original_size"];
        
        // 3. Get the url string from the original size dictionary
        NSString *urlString = originalSize[@"url"];
        
        // 4. Create a URL using the urlString
        NSURL *url = [NSURL URLWithString:urlString]; //checks if it's a valid URL
        
        [self.photoImageView setImageWithURL:url];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
