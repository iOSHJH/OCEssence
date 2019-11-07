//
//  ViewController.m
//  oc本质
//
//  Created by huangjunhuang on 2019/3/21.
//  Copyright © 2019 MoFU. All rights reserved.
//

#import "ViewController.h"
#import "Animal.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self kvcTest];
    
    
}

- (void)kvoTest {
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    [self addObserver:self forKeyPath:@"hideen" options:options context:nil];
}


- (void)kvcTest {
    Animal *animal = [[Animal alloc] init];
    [animal setValue:@10 forKey:@"Age"];
    
    
    NSLog(@"%@", [animal valueForKey:@"age"]);
}


@end
