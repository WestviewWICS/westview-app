//
//  HomePageViewController.swift
//  Westview
//
//  Created by Natalie Ann on 5/19/16.
//  Copyright © 2016 Natalie Aguinaldo. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController, UIWebViewDelegate {
    
    
    @IBOutlet weak var homeActivityInd: UIActivityIndicatorView!
    
    
    

    @IBOutlet var homePage: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        homeActivityInd.hidden = true

        // Do any additional setup after loading the view.
        
        let URL = NSURL(string: "http://www2.powayusd.com/pusdwvhs//")
        
        homePage.loadRequest(NSURLRequest(URL: URL!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func webViewDidStartLoad(webView: UIWebView) {
        homeActivityInd.hidden = false
        homeActivityInd.startAnimating()
    }
    
    
    func webViewDidFinishLoad(webView: UIWebView) {
        homeActivityInd.hidden = true
        homeActivityInd.stopAnimating()
    }
}
