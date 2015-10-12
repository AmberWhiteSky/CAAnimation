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
@property (weak, nonatomic) IBOutlet UIImageView *iconview;
@property(nonatomic,assign)  int  index;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    self.index++;
    if (self.index==3) {
        self.index=0;
    }
    NSString *filename =[NSString  stringWithFormat:@"%d.jpg",self.index+1];
    self.iconview.image =[UIImage  imageNamed:filename];
    
    //转场动画  transitionWithView:self.iconview   传入那个对象，则这个对象就执行转场动画
    [UIView  transitionWithView:self.iconview duration:1.0 options:UIViewAnimationOptionTransitionFlipFromTop animations:nil completion:nil];
    
  }


-(void)  testlayanim{
    //1.种动画
    //    [UIView  beginAnimations:nil context:nil];
    //动画执行完毕后，会自动调用self的animatestop的方法
    //    self.myview.center =CGPointMake(200, 300);
    //    [UIView  commitAnimations];
    self.myview.center =CGPointMake(200, 300);
    [UIView  commitAnimations];
    
    [UIView  animateWithDuration:1.0 animations:^{
        
        self.myview.center =CGPointMake(300, 150);
        
    }];

}


-(void)  testlayeranimation{
    
    
    CABasicAnimation  *anim =[CABasicAnimation  animation];
    anim.keyPath =@"position";
    anim.toValue =[NSValue  valueWithCGPoint:CGPointMake(0, 0)];
    anim.duration=2.0;
    
    anim.removedOnCompletion=NO;
    anim.fillMode=kCAFillModeForwards;
    
    //图层动画都是假象，在动画执行过程中，图层的position属性一直没有变过。
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
