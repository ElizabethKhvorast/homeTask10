//
//  MiddleViewController.swift
//  homeTask10
//
//  Created by Elizabeth Hvorost on 2.10.22.
//

import UIKit

class MiddleViewController: BaseViewController
{
    var message: String?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        if let presentingVC = self.presentingViewController as? BaseViewController
        {
            presentingVC.backMesage = self.backMesage
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let destination = segue.destination as? MiddleViewController
        {
            destination.message = self.message
        }
    }
    
    @IBAction func closePressed(_ sender: Any)
    {
        self.dismiss(animated: true)
    }
}
