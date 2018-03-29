//
//  ViewController.swift
//  Hello World!
//
//  Created by Voss, Garrett on 3/29/18.
//  Copyright © 2018 Voss, Garrett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var lblOutput: UILabel!
    
    @IBAction func showOuput(_ sender: Any) {
        let name = txtName.text
        let output = "Hello " + name! + "!"
        lblOutput.text = output
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self,
                                            action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

