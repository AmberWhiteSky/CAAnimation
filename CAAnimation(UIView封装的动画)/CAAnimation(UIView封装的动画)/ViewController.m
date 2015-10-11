//
//  ViewController.m
//  CAAnimation(UIView封装的动画)
//
//  Created by AmberWhiteSky on 15/10/11.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CABasicAnimation  *anim =[CABasicAnimation  animation];
    anim.keyPath =@"position";
    anim.toValue =[NSValue  valueWithCGPoint:CGPointMake(0, 0)];
    anim.duration=2.0;
    
    anim.removedOnCompletion=NO;
    anim.fillMode=kCAFillModeForwards;
    
    [self.myview.layer addAnimation:anim forKey:nil];
    
//    self.myview.layer.position == CGPointMake(0,0);
    
}


-(void) animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    
    NSLog(@"%@",NSStringFromCGPoint(self.myview.layer.position));

}

    - (void)didReceiveMemoryWarning {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
    }
    
    @end
