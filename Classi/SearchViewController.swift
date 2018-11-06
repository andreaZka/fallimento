//
//  SearchViewController.swift
//  Prototipo
//
//  Created by Andrea on 06/11/2018.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController, UISearchBarDelegate {

    @IBOutlet var searchBar: UISearchBar!
    @IBOutlet var userTable: UITableView!
    
    var searchWord = [String]()
    let user = ["Pazkal","Agostino","Pietroppaolo","Felice","Camastra","Pierfrancesco"]
    var persona = [Persona]()
    var searchPersona: [Persona]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchWord = user
        caricaDati()
        // Do any additional setup after loading the view.
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchPersona = persona.filter({
            (el: Persona) -> Bool in
            if let text = searchBar.text {
                return el.nome.lowercased().contains(text.lowercased())
            }
            return false
        })
    }
    
    func caricaDati(){
            do {
                if let file = Bundle.main.url(forResource: "User", withExtension: "json") {
                    let data = try Data(contentsOf: file)
                    self.persona = try JSONDecoder().decode([Persona].self, from: data)
                    persona = persona.sorted(by: {$0.nome < $1.nome})
                    
                }
                print("dati caricati")
            }catch {
                print("Error")
        }
    
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

