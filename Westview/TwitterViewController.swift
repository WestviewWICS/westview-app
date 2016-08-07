
//
//  TwitterViewController.swift
//  Westview
//
//  Created by Natalie Ann on 5/19/16.
//  Copyright © 2016 Natalie Aguinaldo. All rights reserved.
//

import UIKit

class TwitterViewController: UIViewController, UIWebViewDelegate {
    
    
    @IBOutlet weak var twitterInd: UIActivityIndicatorView!
    
    @IBOutlet  var twitterWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        twitterInd.hidden = true
        
        // Do any additional setup after loading the view.
        
        let URL = NSURL(string: "https://twitter.com/WestviewASB")
        
        twitterWebView.loadRequest(NSURLRequest(URL: URL!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        twitterInd.hidden = false
        twitterInd.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        twitterInd.hidden = true
        twitterInd.stopAnimating()
    }
    
    
    
}
