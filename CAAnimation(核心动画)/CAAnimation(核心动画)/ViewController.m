//
//  ViewController.m
//  CAAnimation(核心动画)
//
//  Created by AmberWhiteSky on 15/10/7.
//  Copyright © 2015年 AmberWhiteSky. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()
@property(nonatomic ,strong) CALayer *layer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    CALayer *layer =[CALayer  layer];
    layer.position=CGPointMake(100, 100);
    layer.bounds =CGRectMake(0, 0, 100, 100);
    layer.backgroundColor =[UIColor  redColor].CGColor;
    [self.view.layer  addSublayer:layer];
    self.layer =layer;
    
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    [self testTranslate];
    
    
}

//平移
-(void)testTransfrom{
    //1.创建动画对象
    CABasicAnimation  *anim =[CABasicAnimation  animation];
    //2 .设置动画
    //keypath 决定了执行怎样的动画，调整哪个属性来执行动画
    //    anim.keyPath =@"transform.rotation";
    //    anim.keyPath=@"transform.scale.x";
    anim.keyPath=@"transform.translation.x";
    anim.toValue=@(100);
    //    anim.fromValue=[NSValue  valueWithCGPoint:CGPointMake(0, 0)];
    //    anim.toValue =[NSValue  valueWithCGPoint:CGPointMake(100, 100)];
    //    anim.toValue=@(M_PI_2);
    anim.duration=2.0;// 动画执行的耗时时间
    //动画执行完毕之后不要删除动画
    anim.removedOnCompletion=NO;
    //动画之行完毕之后  保持最新的状态
    anim.fillMode = kCAFillModeForwards;
    
    
    //3. 添加动画
    [self.layer addAnimation:anim forKey:nil];
    
}


//旋转
-(void)  testRotation{
    //1.创建动画对象
    CABasicAnimation  *anim =[CABasicAnimation  animation];
    //2 .设置动画
    //keypath 决定了执行怎样的动画，调整哪个属性来执行动画
    anim.keyPath =@"transform";
    //    anim.fromValue=[NSValue  valueWithCGPoint:CGPointMake(0, 0)];
    anim.toValue=[NSValue  valueWithCATransform3D:CATransform3DMakeRotation(M_PI, 1, 1, 0)];
    anim.duration=2.0;// 动画执行的耗时时间
    //动画执行完毕之后不要删除动画
    anim.removedOnCompletion=NO;
    //动画之行完毕之后  保持最新的状态
    anim.fillMode = kCAFillModeForwards;
    
    
    //3. 添加动画
    [self.layer addAnimation:anim forKey:nil];
    
    
    
}


//缩放
-(void)  testScale{
    //1.创建动画对象
    CABasicAnimation  *anim =[CABasicAnimation  animation];
    //2 .设置动画
    //keypath 决定了执行怎样的动画，调整哪个属性来执行动画
    anim.keyPath =@"bounds";
    //    anim.fromValue=[NSValue  valueWithCGPoint:CGPointMake(0, 0)];
    anim.toValue=[NSValue  valueWithCGRect:CGRectMake(0, 0, 199, 199)];
    anim.duration=2.0;// 动画执行的耗时时间
    //动画执行完毕之后不要删除动画
    anim.removedOnCompletion=NO;
    //动画之行完毕之后  保持最新的状态
    anim.fillMode = kCAFillModeForwards;
    
    
    //3. 添加动画
    [self.layer addAnimation:anim forKey:nil];
    
    
    
}

//平移
-(void)  testTranslate{
    
    //1.创建动画对象
    CABasicAnimation  *anim =[CABasicAnimation  animation];
    //2 .设置动画
    //keypath 决定了执行怎样的动画，调整哪个属性来执行动画
    anim.keyPath =@"position";
    anim.fromValue=[NSValue  valueWithCGPoint:CGPointMake(0, 0)];
    //到达什么位置  最终变成什么值
    //    anim.toValue=[NSValue  valueWithCGPoint:CGPointMake(199, 199)];
    //增加到什么位置  最终增加多少值
    anim.byValue=[NSValue  valueWithCGPoint:CGPointMake(199, 199)];
    
    anim.duration=2.0;// 动画执行的耗时时间
    //动画执行完毕之后不要删除动画
    anim.removedOnCompletion=NO;
    //动画之行完毕之后  保持最新的状态
    anim.fillMode = kCAFillModeForwards;
    
    
    //3. 添加动画
    [self.layer addAnimation:anim forKey:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
