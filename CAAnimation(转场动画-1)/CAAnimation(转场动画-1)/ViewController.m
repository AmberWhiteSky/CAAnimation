//
//  ViewController.m
//  CAAnimation(转场动画-1)
//
//  Created by AmberWhiteSky on 15/10/9.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconview;
- (IBAction)up;
- (IBAction)next;
@property(nonatomic,assign)  int  index;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)up {
}

- (IBAction)next {
    self.index++;
    NSString * filename =[NSString  stringWithFormat:@"%d.jpg",self.index+1];
    self.iconview.image =[UIImage  imageNamed: filename];
}
@end
