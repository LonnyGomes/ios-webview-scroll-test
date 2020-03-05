//
//  ViewController.m
//  WebViewWrapper
//
//  Created by Lonny Gomes on 3/4/20.
//  Copyright © 2020 Lonny Gomes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"index" withExtension:@"html" subdirectory:@"html"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:url]];
}


@end
