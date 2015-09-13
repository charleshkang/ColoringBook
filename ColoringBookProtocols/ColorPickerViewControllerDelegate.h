//
//  ColorPickerViewControllerDelegate.h
//  ColoringBookProtocols
//
//  Created by Charles Kang  on 9/13/15.
//  Copyright © 2015 Charles Kang . All rights reserved.
//

#import <Foundation/Foundation.h>

// doing the @class is only applicable when referencing protocols
// include a reference to ColorPickerViewcontroller class

@class ColorPickerViewController;

@protocol ColorPickerViewControllerDelegate <NSObject>

// required delegate method
- (void) colorPickerViewController: (ColorPickerViewController *) viewController
                      didPickColor:(UIColor *) color;

@end
