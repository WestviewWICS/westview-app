

//
//  InstagramViewController
//  Westview
//
//  Created by Natalie Ann on 5/19/16.
//  Copyright © 2016 Natalie Aguinaldo. All rights reserved.
//

import UIKit

class InstagramViewController: UIViewController, UIWebViewDelegate {
    
    
    @IBOutlet weak var instaInd: UIActivityIndicatorView!
    
    @IBOutlet  var instaWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        instaInd.hidden = true
        
        // Do any additional setup after loading the view.
        
        let URL = NSURL(string: "https://www.instagram.com/westviewasb/")
        
        instaWebView.loadRequest(NSURLRequest(URL: URL!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        instaInd.hidden = false
        instaInd.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        instaInd.hidden = true
        instaInd.stopAnimating()
    }
    
    
    
}
