//
//  SecondViewController.swift
//  Westview
//
//  Created by Natalie Ann on 5/18/16.
//  Copyright © 2016 Natalie Aguinaldo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UIWebViewDelegate {
    
    @IBOutlet weak var bellActivityInd: UIActivityIndicatorView!
    
    
    
    
    @IBOutlet var WebView: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        bellActivityInd.hidden = true

        // Do any additional setup after loading the view.
       
        let URL = NSURL(string: "http://www2.powayusd.com/pusdwvhs/2014-2015%20Miscelanious/Westview%20Learning%20Schedule%202014-2015.pdf")
        
        WebView.loadRequest(NSURLRequest(URL: URL!))
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        bellActivityInd.hidden = false
        bellActivityInd.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        bellActivityInd.hidden = true
        bellActivityInd.stopAnimating()
    }
    


}
