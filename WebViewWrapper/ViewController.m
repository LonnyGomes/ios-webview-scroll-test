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
    [super viewDidLoad];
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html" inDirectory:@"html"];
    NSString* htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];

    NSURL *baseUrl = [[NSBundle mainBundle] URLForResource:@"html" withExtension:nil];
    
    [self.webView loadHTMLString:htmlString baseURL:baseUrl];
}


@end
