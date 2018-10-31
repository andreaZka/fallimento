//
//  SecondViewController.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 29/10/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tabella: UITableView!
    let campi = ["basket","calcio","tennis","pallavolo"]
    let campiImage = ["basket1","soccer","tennis1","volley"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //rorroorrororo
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return campi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = campi[indexPath.row]
        cell.imageView?.image = UIImage(named: campiImage[indexPath.row])
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetails" {
            if let indexPath = tabella.indexPathForSelectedRow {
                let destination = segue.destination as! ViewControllerDetails
                destination.nome = campi[indexPath.row]
            }
        }
    }
    
    
}

