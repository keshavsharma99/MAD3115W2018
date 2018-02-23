//
//  menuTableView.swift
//  day4-1
//
//  Created by MacStudent on 2018-02-23.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class menuTableView: UITableViewCell {

    @IBOutlet weak var item: UILabel!
    
    @IBOutlet weak var regularprice: UILabel!
    
    @IBOutlet weak var special: UILabel!
    
    @IBOutlet weak var price: UILabel!
    func show(isSpecial: Bool, pricea: Double)
    {
        if !isSpecial
        {
        special.text = ""
            regularprice.text = ""
           price.text = "$\(pricea)"
            contentView.backgroundColor = UIColor.white
            
        }
        else
        {
            special.text = "special"
            regularprice.text = "regular"
            price.text = "$\(pricea - 1.0)"
            contentView.backgroundColor = UIColor.init(red: 0.2, green: 1.0, blue: 0.7, alpha: 0.4)  }
        func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

        func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    }
}
