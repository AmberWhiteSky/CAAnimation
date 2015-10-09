//
//  ViewController.m
//  CAAnimation(转场动画)
//
//  Created by AmberWhiteSky on 15/10/9.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
- (IBAction)previous;
- (IBAction)next;


//当前图片的索引
@property(nonatomic ,assign) int  index;

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



//上一张
- (IBAction)previous {
    
}


//下一张
- (IBAction)next {
    
    self.index++;
    NSString  *filename =[NSString  stringWithFormat:@"%d.jpg",self.index+1];
    self.iconView.image= [UIImage  imageNamed:filename];
    
    
}
@end
