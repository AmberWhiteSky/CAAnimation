//
//  ViewController.m
//  CAAnimation(图标抖动)
//
//  Created by AmberWhiteSky on 15/10/8.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//


#define Angile2Radian(angle)   ((angle) /180.0*M_PI)
#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iconview;
- (IBAction)start;
- (IBAction)stop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//开始
- (IBAction)start {
    CAKeyframeAnimation  *anim =[CAKeyframeAnimation  animation];
    
    anim.keyPath =@"transform.rotation";
    
    anim.values=@[@(Angile2Radian(-5)),@(Angile2Radian(5)),@(Angile2Radian(-5))];
    
    //时间
    anim.duration=0.35;
    //次数
    anim.repeatCount=MAXFLOAT;
    
    anim.removedOnCompletion=NO;
    anim.fillMode=kCAFillModeForwards;
    
    [self.iconview.layer  addAnimation:anim forKey:@"shake"];
    

    
}

//停止
- (IBAction)stop {
    
    [self.iconview.layer  removeAnimationForKey:@"shake"];
}
@end
