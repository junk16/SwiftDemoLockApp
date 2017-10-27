//
//  ViewController.swift
//  LockDemoApp
//
//  Created by jun on 2017/10/27.
//  Copyright © 2017年 jun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func authroze(_ sender: UIButton) {
        let dialog = UIAlertController(title: "test", message: "demo", preferredStyle: UIAlertControllerStyle.alert)
        let button = UIAlertAction(title: password.text
            , style: UIAlertActionStyle.cancel, handler: nil)
        
        dialog.addAction(button)
        
        present(dialog, animated: true, completion: nil)
    }
}

