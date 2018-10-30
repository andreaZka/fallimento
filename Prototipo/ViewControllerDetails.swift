//
//  ViewControllerDetails.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 30/10/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class ViewControllerDetails: UIViewController {
    
    //Prova modifica

    @IBOutlet weak var navBar: UINavigationBar!
    var nome = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = nome
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
