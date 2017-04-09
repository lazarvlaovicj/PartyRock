//
//  SecondVC.swift
//  PartyRock2
//
//  Created by PRO on 1/5/17.
//  Copyright © 2017 Lazar. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var lbl: UILabel!
    
    private var _partyRock: PartyRockArray!
    
    var partRock: PartyRockArray{
        get{
            return _partyRock
        }set{
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = partRock.videoTitle
        webView.loadHTMLString(partRock.videoURL, baseURL: nil)
        
    }
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
