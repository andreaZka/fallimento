//
//  TableViewCell1.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 31/10/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class TableViewCell1: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var Orario: UILabel!
    
    @IBOutlet weak var Name_event: UILabel!
    @IBOutlet weak var Type_ofSports: UILabel!
    
   
    
    
    
   
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
