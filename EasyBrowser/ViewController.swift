//
//  ViewController.swift
//  EasyBrowser
//
//  Created by AydınKaya on 10.12.2024.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView : WKWebView!
    var progressView : UIProgressView!
    
    override func loadView() {
        
        webView = WKWebView()
        webView.navigationDelegate = self
        
        // Bir delege, başka bir şeyin yerine hareket eden, soruları etkili bir şekilde yanıtlayan ve kendi adına olaylara yanıt veren bir şeydir. WKWebView'ı kullanıyoruz: Apple'ın güçlü, esnek ve verimli web oluşturucusu. Ancak WKWebView ne kadar akıllı olursa olsun, uygulamamızın nasıl davranmak istediğini bilmiyor (veya umursamıyor), çünkü bu bizim özel kodumuz.
        
        view = webView
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Open", style: .plain, target: self, action: #selector(openTapped))
        
        
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        
        progressView = UIProgressView(progressViewStyle: .bar)
        progressView.sizeToFit()
        let progressButton = UIBarButtonItem(customView: progressView)
        
        toolbarItems = [progressButton, spacer, refresh]
        navigationController?.isToolbarHidden = false
        
        
        webView.addObserver(self, forKeyPath: #keyPath(WKWebView.estimatedProgress), options: .new, context: nil)
        
        
        let url = URL(string: "https://www.hackingwithswift.com/100")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
    }
    
    
    @objc func openTapped(){
        let ac = UIAlertController(title: "Open Page...", message: nil , preferredStyle: .actionSheet)
        
        ac.addAction(UIAlertAction(title: "apple.com", style: .default, handler: openPage))
        ac.addAction(UIAlertAction(title: "hackingwithswift.com", style: .default, handler: openPage))
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        ac.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
                    
        present(ac, animated: true)
                     
    }

    func openPage(action: UIAlertAction){
        guard let actionTitle = action.title else  {return }
        guard let url = URL(string: "https://" + actionTitle) else {return}
        webView.load(URLRequest(url: url))
            
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
                     
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            progressView.progress = Float(webView.estimatedProgress)
        }
    }
    
}
                     
