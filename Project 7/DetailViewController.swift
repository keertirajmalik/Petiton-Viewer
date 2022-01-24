//
//  DetailViewController.swift
//  Project 7
//
//  Created by Keertiraj Laxman Malik on 23/01/22.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detailItem: Petition?

    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let detailItem = detailItem else { return }

        let html = """
        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <style> body { font-size: 150%; } </style>
            </head>
            <body>
                <h4>
                    \(detailItem.title)
                </h4>
                <p>
                    \(detailItem.body)
                </p>
                <p>
                    Total signatures received:
                        \(detailItem.signatureCount)
                </p>
            </body>
        </html>
        """

        webView.loadHTMLString(html, baseURL: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
