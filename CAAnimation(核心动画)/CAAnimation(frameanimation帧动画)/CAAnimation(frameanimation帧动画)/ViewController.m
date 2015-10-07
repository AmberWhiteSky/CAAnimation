//
//  ViewController.m
//  CAAnimation(frameanimation帧动画)
//
//  Created by AmberWhiteSky on 15/10/7.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *orginView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event  {
    
    CAKeyframeAnimation  *anim =[CAKeyframeAnimation  animation];
    anim.keyPath =@"position";
    anim.removedOnCompletion=NO;
    anim.fillMode=kCAFillModeForwards;
    anim.duration=2.0;
    
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddEllipseInRect(path, NULL, CGRectMake(100, 100, 200, 200));
    anim.path=path;
    CGPathRelease(path);
    
    
    //设置动画的执行节奏
//    kCAMediaTimingFunctionEaseInEaseOut   一开始比较慢 中间会加速  临近结束的时候会变慢
    anim.timingFunction = [CAMediaTimingFunction  functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    
    //监听动画
    anim.delegate=self;
    [self.orginView.layer  addAnimation:anim forKey:nil];

    
    
}


#pragma   mark 动画的代理方法
#pragma  mark  动画开始的时候调用
-(void)animationDidStart:(CAAnimation *)anim{

    NSLog(@"animationDidStart");
}


#pragma  mark  动画结束的时候调用 
-(void) animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {

    
    NSLog(@"animationDidStop");


}




-(void)  testMove{
    CAKeyframeAnimation *anim =[CAKeyframeAnimation  animation];
    anim.keyPath =@"position";
    NSValue  *v1 = [NSValue  valueWithCGPoint:CGPointZero];
    NSValue  *v2= [NSValue  valueWithCGPoint:CGPointMake(100, 0)];
    NSValue  *v3 = [NSValue  valueWithCGPoint:CGPointMake(100, 200)];
    NSValue  *v4 = [NSValue  valueWithCGPoint:CGPointMake(0, 200)];
    anim.values =@[v1,v2,v3,v4];
    anim.duration=2.0;
    
    
    //每一帧执行的动画的时间
    //    anim.keyTimes= @[@(0.5),@(0.25),@(0.25)];
    
    anim.removedOnCompletion=NO;
    anim.fillMode=kCAFillModeForwards;
    
    [self.orginView.layer addAnimation:anim forKey:nil];



}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
