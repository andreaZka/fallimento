//
//  SecondViewController.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 29/10/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class EventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tabella: UITableView!
    
    @IBOutlet weak var datadelgiorno: UITextField!
    var EVENTI = [event]()
    
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
        cell.Name_event.text = EVENTI[indexPath.row].nome
        cell.image2.image = UIImage(named: EVENTI[indexPath.row].image)
        cell.TypeSport.text = EVENTI[indexPath.row].type
        cell.orario.text = EVENTI[indexPath.row].ora
        datadelgiorno.text = EVENTI[0].date
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
            if let file = Bundle.main.url(forResource: "EventiFriday", withExtension: "json") {
                let data = try Data(contentsOf: file)
                self.EVENTI = try JSONDecoder().decode([event].self, from: data)
                EVENTI.append(contentsOf: AdditionalDB.instance.eventFriday)
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

