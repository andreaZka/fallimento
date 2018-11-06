//
//  SearchViewController.swift
//  Prototipo
//
//  Created by Andrea on 06/11/2018.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var userTable: UITableView!
    
    var searchWord = [String]()
    let user = ["Pazkal","Agostino","Pietroppaolo","Felice","Camastra","Pierfrancesco"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchWord = user
        // Do any additional setup after loading the view.
    }
    
//    override func tabl
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
