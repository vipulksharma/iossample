//
//  ViewController.swift
//  super-ui-ios
//
//  Created by Vipul Sharma on 14/09/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let webView : WKWebView = {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let configuration = WKWebViewConfiguration()
        configuration.defaultWebpagePreferences = prefs
        let webView = WKWebView(frame: .zero,
                                configuration: configuration)
        return webView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(webView)
        
        guard let url = URL(string: "https://mysuper.link") else {
        return }
        webView.load(URLRequest(url: url))
        webView.customUserAgent = "ipad/iphone/macbook"
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }
}

