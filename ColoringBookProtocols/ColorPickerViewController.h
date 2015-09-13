//
//  ColorPickerViewController.h
//  ColoringBookProtocols
//
//  Created by Charles Kang  on 9/13/15.
//  Copyright © 2015 Charles Kang . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorPickerViewControllerDelegate.h"

@interface ColorPickerViewController : UIViewController

@property (nonatomic, weak) id <ColorPickerViewControllerDelegate> delegate;

@end
