//
//  ViewController.m
//  ColoringBookProtocols
//
//  Created by Charles Kang  on 9/13/15.
//  Copyright © 2015 Charles Kang . All rights reserved.
//

#import "TextColorVC.h"
#import "ColorPickerViewController.h"
#import "ColorPickerViewControllerDelegate.h"

@interface TextColorVC () <ColorPickerViewControllerDelegate>

@property (nonatomic) UIButton *selectedButton;
@property (strong, nonatomic) IBOutlet UIButton *sunViewBorder;

@end

@implementation TextColorVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sunViewBorder.layer.cornerRadius = 50.0;
    
    
}

- (IBAction)coloringItemTapped:(UIButton *)sender {
    
    // set self.selectedButton to the button that was tapped
    self.selectedButton = sender;
    
    // instantiate new view controller from storyboard
    ColorPickerViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ColorPickerViewController"];
    
    // set the delegate property of viewController to self
    vc.delegate = self;
    
    
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark ColorPickerViewControllerDelegate

- (void) colorPickerViewController:(ColorPickerViewController *)viewController didPickColor:(UIColor *)color {
    NSLog(@"%@", color);
    [self.selectedButton setTitleColor:color forState:UIControlStateNormal];
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
