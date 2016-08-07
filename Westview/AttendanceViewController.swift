
import UIKit

class AttendanceViewController: UIViewController{
    
   
    @IBOutlet var actInd: UIActivityIndicatorView!
    
    @IBOutlet var attendanceWebView: UIWebView!

    var path = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        actInd.hidden = true
        
        path = NSBundle.mainBundle().pathForResource("attendance_procedures", ofType: "pdf")!
        
        let url = NSURL.fileURLWithPath(path)
    
        self.attendanceWebView.loadRequest(NSURLRequest(URL: url))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func webViewDidStartLoad(webView: UIWebView) {
        actInd.hidden = false
        actInd.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        actInd.hidden = true
        actInd.stopAnimating()
}

}
