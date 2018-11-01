//
//  TableViewCell2.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 01/11/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class TableViewCell2: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
    @IBOutlet weak var Name_event: UILabel!
    
    
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var orario: UILabel!
    @IBOutlet weak var TypeSport: UILabel!
   
    @IBOutlet weak var N_event3: UILabel!
    
    @IBOutlet weak var OR_event3: UILabel!
    
    @IBOutlet weak var type_event3: UILabel!
    
    @IBOutlet weak var image_event3: UIImageView!
    
    
    
    
    @IBOutlet weak var Image_E4: UIImageView!
    
    @IBOutlet weak var name_E4: UILabel!
    
    @IBOutlet weak var type_E4: UILabel!
    
    @IBOutlet weak var ora_E4: UILabel!
    
    
    @IBOutlet weak var Image_E5: UIImageView!
    @IBOutlet weak var Name_E5: UILabel!
    @IBOutlet weak var type_E5: UILabel!
    @IBOutlet weak var ora_E5: UILabel!
    
    
    @IBOutlet weak var Image_E6: UIImageView!
    @IBOutlet weak var Name_E6: UILabel!
    @IBOutlet weak var Type_E6: UILabel!
    @IBOutlet weak var Ora_E6: UILabel!
    
    
    @IBOutlet weak var Image_E7: UIImageView!
    @IBOutlet weak var Name_E7: UILabel!
    @IBOutlet weak var type_E7: UILabel!
    @IBOutlet weak var ora_E7: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
