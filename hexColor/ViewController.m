//
//  ViewController.m
//  hexColor
//
//  Created by Trung Bao on 11/10/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+UIColor.h"

@interface ViewController ()
{
    NSString *text;
}
@property (weak, nonatomic) IBOutlet UITextField *nhapHexColor;
@property (weak, nonatomic) IBOutlet UIImageView *screen;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)viewColor:(id)sender {
    text = self.nhapHexColor.text;
    self.screen.backgroundColor = [[UIColor alloc] color:text alpha:1.0];
    //[self.view addSubview:label];
}

@end
