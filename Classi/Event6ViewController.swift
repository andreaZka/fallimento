//
//  Event6ViewController.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 01/11/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class Event6ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
    
{
    
    @IBOutlet weak var tabella: UITableView!
    
    var EVENTI = [event]()
    let campi6 = ["basket","calcio","tennis","pallavolo"]
    let campiImage6 = ["basket1","soccer","tennis1","volley"]
    let N_eventi6 = ["Partita di Event6","partita di andrea","Partita di zi rafel", "partita di mario"]
    let Event_Date6 = ["10:00","12:30","15:00","21:00"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //rorroorrororo
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return EVENTI.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = "Cell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TableViewCell2
        
        //        cell..text = campi[indexPath.row]
        cell.Name_E6.text = EVENTI[indexPath.row].nome
        cell.Image_E6.image = UIImage(named: EVENTI[indexPath.row].image)
        cell.Type_E6.text = EVENTI[indexPath.row].type
        cell.Ora_E6.text = EVENTI[indexPath.row].ora
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
        caricaDati()
    }
    
    func caricaDati(){
        do {
            if let file = Bundle.main.url(forResource: "EventiTuesday", withExtension: "json") {
                let data = try Data(contentsOf: file)
                self.EVENTI = try JSONDecoder().decode([event].self, from: data)
                EVENTI = EVENTI.sorted(by: {$0.ora < $1.ora})
                
            }
            print("dati caricati")
        }catch {
            print("Error")
        }
    }
    /*  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "toDetails" {
     if let indexPath = tabella.indexPathForSelectedRow {
     let destination = segue.destination as! ViewControllerDetails
     destination.nome = campi[indexPath.row]
     }
     
     }
     
     }
     
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetails" {
            print("segue ok")
            
            if let indexPath = tabella.indexPathForSelectedRow {
                let destination = segue.destination as! ViewControllerDetails
                destination.nome = EVENTI[indexPath.row].nome
                destination.tipolabello = EVENTI[indexPath.row].type
                destination.imaginina = EVENTI[indexPath.row].image
                destination.desc = EVENTI[indexPath.row].description
            }
        }
    }
}
