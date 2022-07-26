//
//  SeventhViewController.swift
//  KWK 2022 Final Project
//
//  Created by India Poetzscher on 7/21/22.
//

import UIKit

class SeventhViewController: UIViewController {
    
    var hasNoMemory: Bool = true
    
    @IBOutlet weak var leaveAloneButton: UIButton!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var snoopAroundButton: UIButton!
    @IBOutlet weak var continueButton2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(hasNoMemory)
        continueButton.isHidden = true
        continueButton2.isHidden = true
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "seesaw")!)

        // Do any additional setup after loading the view.
    }
    @IBAction func leaveAlone(_ sender: Any) {
        continueButton.isHidden = false
        snoopAroundButton.isHidden = true
        leaveAloneButton.isHidden = true
//        hasMemory = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if segue.destination is MessageViewController {
        let messageVC = segue.destination as? MessageViewController
            messageVC!.hasMemory2 = hasNoMemory
        } else if segue.destination is NinthViewController {
            let ninthVC = segue.destination as? NinthViewController
            ninthVC!.hasNoMemory2 = hasNoMemory
            }
        
//        let messageVC = segue.destination as! MessageViewController
//
//        messageVC.hasMemory2 = hasMemory
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

    @IBAction func snoopAround(_ sender: Any) {
        hasNoMemory = false
        print(hasNoMemory)
        continueButton2.isHidden = false
        leaveAloneButton.isHidden = true
        snoopAroundButton.isHidden = true
        
    }
    
    
//    @IBAction func leaveAlone(_ sender: Any) {
//        hasMemory = false
//    }
    

    
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation


}
