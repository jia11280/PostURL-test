//
//  ViewController.m
//  PostURL-test
//
//  Created by coolyym on 2016/10/17.
//  Copyright © 2016年 YYM. All rights reserved.
//

#import "ViewController.h"
#import "YYMViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (IBAction)buttonCLick:(id)sender {
    
    NSStringEncoding strEncode = CFStringConvertEncodingToNSStringEncoding(kCFStringEncodingGB_18030_2000);
    
    NSString *downloadedTxt = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"mdjyml.txt" ofType:nil] encoding:strEncode error:nil];
    
    YYMViewController * yym = [[YYMViewController alloc]init];
    
    
    
    [yym loadText:downloadedTxt];
    
    
    
    [self presentViewController:yym animated:YES completion:nil];

    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //test
 
       // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
