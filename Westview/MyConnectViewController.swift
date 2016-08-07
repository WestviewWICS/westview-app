//
//  MyConnectViewController.swift
//  Westview
//
//  Created by Natalie Ann on 5/18/16.
//  Copyright © 2016 Natalie Aguinaldo. All rights reserved.
//

import UIKit

class MyConnectViewController: UIViewController, UIWebViewDelegate {
    
    
    @IBOutlet weak var canvasActivityInd: UIActivityIndicatorView!
    
    
    
    @IBOutlet var canvasWebView: UIWebView!
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        canvasActivityInd.hidden = true
        
        // Do any additional setup after loading the view.
        
        let URL = NSURL(string: "https://poway.instructure.com/")
        
        canvasWebView.loadRequest(NSURLRequest(URL: URL!))
        
    }




    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func webViewDidStartLoad(webView: UIWebView) {
        canvasActivityInd.hidden = false
        canvasActivityInd.startAnimating()
        
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        canvasActivityInd.hidden = true
        canvasActivityInd.stopAnimating()
        
    }
}
