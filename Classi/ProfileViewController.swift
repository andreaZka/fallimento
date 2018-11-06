//
//  ViewController.swift
//  interfaccia_crea_evento
//
//  Created by Raffaele Cusano on 30/10/2018.
//  Copyright © 2018 Baffo. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!

        @IBOutlet weak var Description: UILabel!
    
    @IBOutlet weak var Eventi: UILabel!
    @IBOutlet weak var Medaglievinte: UILabel!
    @IBOutlet weak var Partitevinte: UILabel!
    @IBOutlet weak var NomeCognome: UITextField!
    @IBOutlet weak var stelle: FloatRatingView!
    
    @IBOutlet weak var liveLabel: UILabel!
    @IBOutlet var donna: UIButton!
    @IBOutlet var amicoUomo: UIButton!
    
    
    var desc: String?
    var namSur: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stelle.type = .halfRatings
        stelle.delegate = self as FloatRatingViewDelegate
        liveLabel.text = String(format: "%.1f", self.stelle.rating)
        image.layer.borderWidth = 1.0
        image.layer.masksToBounds = true
        image.layer.cornerRadius =  image.frame.width/2.0
        image.clipsToBounds = true
//        image.layer.bounds = CGRect(x: 0, y: 0, width: image.layer.frame.width / 2, height: image.layer.frame.height / 2)
    }
    
    @IBAction func toto(segue:UIStoryboardSegue) {
        Description.text = desc!
        NomeCognome.text = namSur!
        
    }
    

}


extension ProfileViewController: FloatRatingViewDelegate {
    
    
    
    func floatRatingView(_ ratingView: FloatRatingView, isUpdating rating: Double) {
        liveLabel.text = String(format: "%.1f", self.stelle.rating)
    }
    
}
