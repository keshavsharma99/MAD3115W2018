//
//  ViewController.swift
//  design
//
//  Created by MacStudent on 2018-02-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var labelEmail: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    
    @IBAction func btnloginAction(_ sender: UIButton) {
        var email = txtEmail.text!
        labelEmail.text = email
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}

