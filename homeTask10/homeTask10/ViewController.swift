//
//  ViewController.swift
//  homeTask10
//
//  Created by Elizabeth Hvorost on 2.10.22.
//

import UIKit

class BaseViewController: UIViewController
{
    var backMesage: Any?
}

class ViewController: BaseViewController
{
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
        
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        if let data = self.backMesage as? [String : String]
        {
            self.titleLabel.text = data["title"]
            self.subtitleLabel.text = data["subtitle"]
            self.messageLabel.text = data["message"]
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let destination = segue.destination as? MiddleViewController
        {
            destination.message = "Last one ViewController is shown!"
        }
    }
}

