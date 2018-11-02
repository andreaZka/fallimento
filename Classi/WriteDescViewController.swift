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
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /////// come trasferire file txt da classe ad altra
    
    @IBAction func Done(_ sender: Any) {
       // Description.text = Text_desc.text
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
