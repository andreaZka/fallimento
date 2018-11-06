//
//  WriteDescViewController.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 02/11/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class WriteDescViewController: UIViewController {
    
    @IBOutlet weak var Text_desc: UITextView!
    @IBOutlet weak var NAME: UITextField!
    
    @IBOutlet weak var SURNAME: UITextField!
    var namesur: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var space = " "
    
    
    
//    @IBAction func Done(_ sender: Any) {
//       // Description.text = Text_desc.text
//        performSegue(withIdentifier: "unwindto", sender: self)
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindto" {
            namesur = NAME.text! + space + SURNAME.text!
            if let dest = segue.destination as? ProfileViewController {
                dest.desc = Text_desc.text
                dest.namSur = namesur
            }
        }
    }
//    gghjjj
    
}
