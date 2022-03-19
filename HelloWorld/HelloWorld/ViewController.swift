//
//  ViewController.swift
//  HelloWorld
//
//  Created by Kunapot Pairat on 19/3/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.black
    }

    @IBAction func showMessage(sender: UIButton) {
        let emojiDict = ["🤖": "robot", "👻": "ghost", "🤓": "smile", "👾": "alien"]
        if let key = sender.titleLabel?.text {
            let message = emojiDict[key]
            let alertController = UIAlertController(title: "Welcome to My First App", message: message, preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
}

