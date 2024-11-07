//
//  ViewController.h
//  Objective-C-PencilKit
//
//  Created by Angelos Staboulis on 7/11/24.
//

#import <UIKit/UIKit.h>
#import <PencilKit/PencilKit.h>
@interface ViewController : UIViewController
@property (nonatomic, strong) PKCanvasView *canvas;
@property (nonatomic, strong) PKToolPicker *toolPicker;

@end

