//
//  ViewController.m
//  Objective-C-PencilKit
//
//  Created by Angelos Staboulis on 7/11/24.
//

#import "ViewController.h"
#import <PencilKit/PencilKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _canvas = [[PKCanvasView alloc] init];
    _toolPicker = [[PKToolPicker alloc] init];
    [self initialCanvas];
    self.canvas.frame = self.view.frame;
}
- (void)initialCanvas {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.text = @"Objective C PencilKit";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    [label setTranslatesAutoresizingMaskIntoConstraints:FALSE];
    [[label centerXAnchor] constraintEqualToAnchor:self.view.centerXAnchor constant:0].active = TRUE;
    [[label topAnchor] constraintEqualToAnchor:self.view.topAnchor constant:100].active = TRUE;
    self.canvas.drawingPolicy = PKCanvasViewDrawingPolicyAnyInput;
    self.canvas.opaque = YES;
    self.canvas.backgroundColor = [UIColor clearColor];
    
    self.canvas.frame = self.view.frame;
    self.canvas.tool = [[PKInkingTool alloc] initWithInkType:PKInkTypePen color:[UIColor blackColor] width:30];
    [self.view addSubview:self.canvas];
    [self.toolPicker setVisible:YES forFirstResponder:self.canvas];
    [self.toolPicker addObserver:self.canvas];
    [self.canvas becomeFirstResponder];
}

@end
