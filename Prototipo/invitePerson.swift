//
//  invitePerson.swift
//  Prototipo
//
//  Created by Andrea on 06/11/2018.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class invitePerson: UIViewController, UITableViewDataSource {
    
    var nRow=0
    var parentTableView: UITableView?
    var parentContainerView: UIView?
    
    @IBOutlet var tableView: UITableView!
    @IBAction func inviteButton(_ sender: Any) {
        nRow += 1
        var frame = view.frame
        if nRow > 3 {
            frame = CGRect(x: view.frame.origin.x, y: view.frame.origin.y, width: view.frame.width, height: view.frame.height + 44)
            parentContainerView?.frame = frame
        }
        tableView.reloadData()
        view.frame = frame
        parentTableView?.reloadData()
    }
    
    let persons = ["Pazkal","Agostino","Pietroppaolo","Felice","Camastra","Pierfrancesco"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        // #warning Incomplete implementation, return the number of rows
        //        tableView.reloadData()
        return nRow
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier="rowPerson"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text=persons[indexPath.row]
        return cell
    }
    
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //
    //                let cellIdentifier="rigaPerson"
    //                let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
    //                //            if nRighe >= indexPath.row{
    //                cell.textLabel?.text=persons[indexPath.row]
    //                //           }
    //                return cell
    //        }
    //
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

