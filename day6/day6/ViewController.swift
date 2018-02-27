//
//  ViewController.swift
//  day6
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class cars: UIViewController {

    @IBOutlet weak var txtcarcolour: UITextField!
    @IBOutlet weak var txtcarplate: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnlistall(_ sender: UIButton) {
    }
    @IBAction func btnaddnewaction(_ sender: UIButton) {
        self.writePropertyList()
    }
    func writePropertyList()
    {
        let mycar = NSMutableDictionary()
      mycar["carplate"] = self.txtcarplate.text
        mycar["carcolour"] = self.txtcarcolour.text
        if let plistPath = Bundle.main.path(forResource : "cars", ofType: "plist")
        {
            let carsplist = NSMutableArray(contentsOfFile: plistPath)
carsplist?.add(mycar)
            if(carsplist?.write(toFile: plistPath, atomically: true))!
            {
                print(" carslist : \(String(describing: carsplist))")
            }
        }
        else{
            print("unable to load")
        }
        
        
        
            }
}

