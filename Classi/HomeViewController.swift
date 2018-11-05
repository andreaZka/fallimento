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
    
    @IBOutlet weak var ToEvents: UIButton!
    
    
    let campi = ["basket","calcio","tennis","pallavolo"]
    let campiImage = ["basket1","soccer","tennis1","volley"]
    let N_eventi = ["Partita di Home","partita di andrea","Partita di zi rafel", "partita di mario"]
    let Event_Date = ["10:00","12:30","15:00","21:00"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //rorroorrororo
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return campi.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "Cell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TableViewCell1
        
//        cell..text = campi[indexPath.row]
        
        cell.Name_event.text = N_eventi[indexPath.row]
        cell.image1.image = UIImage(named: campiImage[indexPath.row])
        cell.Type_ofSports.text = campi[indexPath.row]
        cell.Orario.text = Event_Date[indexPath.row]
        // Configure the cell...
        let maskLayer = CAShapeLayer()
        let bounds = cell.bounds
        maskLayer.path = UIBezierPath(roundedRect: CGRect(x: 2, y: 2, width: bounds.width-4, height: bounds.height-4), cornerRadius: 5).cgPath
        cell.layer.mask = maskLayer
        
       
    
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tabella.separatorInset = UIEdgeInsets(top: 15.0, left: 0.0, bottom: 15.0, right: 0.0)
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

