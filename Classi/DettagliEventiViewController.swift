//
//  DettagliEventiViewController.swift
//  Prototipo
//
//  Created by Sergio Solmonte on 30/10/18.
//  Copyright © 2018 Sergio Solmonte. All rights reserved.
//

import UIKit

class DettagliEventiViewController: UIViewController {
    
    @IBOutlet  var containerView1: UIView!  //domenica
    @IBOutlet  var containerView2: UIView!  //lunedi
    @IBOutlet weak var containerView4: UIView! // martedi
    @IBOutlet weak var containerView3: UIView!// mercoledi
    @IBOutlet weak var containerView7: UIView!// giovedi
    @IBOutlet weak var containerView5: UIView! //venerdi
    @IBOutlet weak var containerView6: UIView! //sabato
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.selectedSegmentIndex = 0
        SwitchDay()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SwitchDay() {
       
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            containerView1.alpha = 1
            containerView2.alpha = 0
            containerView3.alpha = 0
            containerView4.alpha = 0
            containerView5.alpha = 0
            containerView6.alpha = 0
            containerView7.alpha = 0
            
        case 1:
            containerView1.alpha = 0
            containerView2.alpha = 1
            containerView3.alpha = 0
            containerView4.alpha = 0
            containerView5.alpha = 0
            containerView6.alpha = 0
            containerView7.alpha = 0
        case 2:
            containerView1.alpha = 0
            containerView2.alpha = 0
            containerView3.alpha = 1
            containerView4.alpha = 0
            containerView5.alpha = 0
            containerView6.alpha = 0
            containerView7.alpha = 0
        case 3:
            containerView1.alpha = 0
            containerView2.alpha = 0
            containerView3.alpha = 0
            containerView4.alpha = 1
            containerView5.alpha = 0
            containerView6.alpha = 0
            containerView7.alpha = 0
        case 4:
            containerView1.alpha = 0
            containerView2.alpha = 0
            containerView3.alpha = 0
            containerView4.alpha = 0
            containerView5.alpha = 1
            containerView6.alpha = 0
            containerView7.alpha = 0
            
        case 5:
            containerView1.alpha = 0
            containerView2.alpha = 0
            containerView3.alpha = 0
            containerView4.alpha = 0
            containerView5.alpha = 0
            containerView6.alpha = 1
            containerView7.alpha = 0
            
        case 6:
            containerView1.alpha = 0
            containerView2.alpha = 0
            containerView3.alpha = 0
            containerView4.alpha = 0
            containerView5.alpha = 0
            containerView6.alpha = 0
            containerView7.alpha = 1
        default:
            break
        }
    }
    
}
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




