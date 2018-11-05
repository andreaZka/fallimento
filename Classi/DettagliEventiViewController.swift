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
            containerView1.isHidden = false
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
            
        case 1:
            containerView1.isHidden = true
            containerView2.isHidden = false
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
        case 2:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = false
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
        case 3:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = false
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
        case 4:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = false
            containerView6.isHidden = true
            containerView7.isHidden = true
            
        case 5:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = false
            containerView7.isHidden = true
            
        case 6:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = false
        default:
            break
        }
    }
    
//    ggghhgh
}
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */




