//
//  ViewController.swift
//  day morecontrols
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moodssegment: UISegmentedControl!
    @IBOutlet weak var mystepper: UIStepper!
    
    @IBOutlet weak var myprogressview: UIProgressView!
    
    @IBOutlet weak var myslider: UISlider!
    
    @IBOutlet weak var mystepperlabel: UILabel!
    @IBOutlet weak var imgmood: UIImageView!
    
    @IBOutlet weak var activityindicator: UIActivityIndicatorView!
    var moodImages: [UIImage] =
        [UIImage(named:"petmd-cat-happy-13.jpg")!, UIImage(named:"petmd-cat-happy-13.jpg")!]
    var progresstimer = Timer()
            
            
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func btnstartaction(_ sender: UIButton) {
        activityindicator.startAnimating()
    }
    
    @IBAction func btnstopaction(_ sender: UIButton) {
        activityindicator.stopAnimating()
    }
    
    @IBAction func segmentchange(_ sender: UISegmentedControl) {
        print("selected : \(moodssegment.selectedSegmentIndex)")
        imgmood.image = moodImages[moodssegment.selectedSegmentIndex]
    }
   @IBAction func mystepperaction(_ sender: UIStepper) {
      mystepperlabel.text = String(mystepper.value)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
