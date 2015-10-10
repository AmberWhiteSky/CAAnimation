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
    self.index--;
    if (self.index==-1) {
        self.index=6;
    }
    NSString * filename =[NSString  stringWithFormat:@"%d.jpg",self.index+1];
    self.iconview.image =[UIImage  imageNamed: filename];

    //转场动画
    CATransition  *anim =[CATransition  animation];
    anim.type =@"cube";
    anim.duration=0.5;
    anim.subtype=kCATransitionFromTop;

    [self.iconview.layer  addAnimation:anim forKey:nil];
    
}

- (IBAction)next {
    self.index++;
    if (self.index==7) {
        self.index=0;
    }
    
    
    NSString * filename =[NSString  stringWithFormat:@"%d.jpg",self.index+1];
    self.iconview.image =[UIImage  imageNamed: filename];
    
    
    //转场动画
    CATransition  *anim =[CATransition  animation];
    anim.type =@"push";
    anim.duration=0.5;
    
//    anim.startProgress=0.0;
//    anim.endProgress=0.9;
    anim.subtype=kCATransitionFromLeft;
    [self.iconview.layer  addAnimation:anim forKey:nil];
    
    
}
@end
