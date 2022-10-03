//
//  LastViewController.swift
//  homeTask10
//
//  Created by Elizabeth Hvorost on 2.10.22.
//

import UIKit

class LastViewController: MiddleViewController
{
    @IBOutlet weak var lastLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.lastLabel.text = self.message
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        let backMessage = ["title" : "Hello!",
                           "subtitle" : "Message received:", "message" : "What's up!"];
        if let presentingVC = self.presentingViewController as? BaseViewController
        {
            presentingVC.backMesage = backMessage
        }
    }
}
