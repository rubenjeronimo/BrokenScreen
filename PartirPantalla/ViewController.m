//
//  ViewController.m
//  PartirPantalla
//
//  Created by Ruben Jeronimo Fernandez on 08/07/14.
//  Copyright (c) 2014 IronHack. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self reloadView];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)reloadView{
    
    UIDeviceOrientation orientacion = [[UIDevice currentDevice]orientation];
    
    if (orientacion==UIDeviceOrientationPortrait || orientacion==UIDeviceOrientationUnknown) {
        [self setPortait];
        
    }else if (orientacion == UIDeviceOrientationLandscapeLeft || orientacion == UIDeviceOrientationLandscapeRight){
        [self setLandscape];
    }

    

}

-(void)setPortait{

    [self setLeftImage];
    [self setRightImage];
}

-(void)setLandscape{
    
    [self setLeftImage];
    [self setRightImage];
}

-(void) setLeftImage{
    self.imgIzquierda.image = [UIImage imageNamed:@"sad-batman.jpeg"];
    
    
    
    


}

-(void) setRightImage{
    self.imgDerecha.image = [UIImage imageNamed:@"sad-batman.jpeg"];


}

@end
