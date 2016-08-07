
//
//  FacebookViewController.swift
//  Westview
//
//  Created by Natalie Ann on 5/19/16.
//  Copyright © 2016 Natalie Aguinaldo. All rights reserved.
//

import UIKit

class FacebookViewController: UIViewController, UIWebViewDelegate {
    
    
    @IBOutlet weak var fbInd: UIActivityIndicatorView!
    

    
    @IBOutlet var fbWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fbInd.hidden = true
        
        // Do any additional setup after loading the view.
        
        let URL = NSURL(string: "https://www.facebook.com/WestviewASB/")
        
        fbWebView.loadRequest(NSURLRequest(URL: URL!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        fbInd.hidden = false
        fbInd.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        fbInd.hidden = true
        fbInd.stopAnimating()
    }
    
    
    
}
