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
    
    private let authorizeKey = "ZGVtbw=="
    
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
    
    @IBAction func lockScreen(_ sender: UIButton) {
        let decodedText = password.text!.data(using: .utf8)!.base64EncodedString()
        
        var title   = ""
        var message = ""
        if decodedText == authorizeKey {
            title   = "認証成功"
            message = "画面をロックします。\n（DEMOなの機能未実装）"
        }else{
            title   = "認証失敗"
            message = "パスワードが間違っています。"
        }
        
        let dialog = UIAlertController(title: title, message: message,
                                       preferredStyle: UIAlertControllerStyle.alert)
        let button = UIAlertAction(title: "OK"
            , style: UIAlertActionStyle.cancel, handler: nil)
        
        dialog.addAction(button)
        
        present(dialog, animated: true, completion: nil)
    }
}

