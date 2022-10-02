//
//  LastViewController.swift
//  homeTask10
//
//  Created by Sergey Hvorost on 2.10.22.
//

import UIKit

class LastViewController: MiddleViewController
{
    let backMessage = ["title" : "Hello!",
                       "subtitle" : "Message received:", "message" : "What's up!"];
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.messageLabel.text = self.message
    }
}
