//
//  WinViewController.swift
//  KWK 2022 Final Project
//
//  Created by India Poetzscher on 7/21/22.
//

import UIKit

class WinViewController: UIViewController {
    
    @IBOutlet weak var winLabel: UILabel!
    @IBOutlet weak var loseLabel: UILabel!
    
    var hasNoMemory4: Bool? = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if hasNoMemory4! {
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueRoom")!)
            winLabel.isHidden = true
            print(hasNoMemory4 ?? true)
        } else if !hasNoMemory4! {
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: "doctor")!)
            loseLabel.isHidden = true
            print(hasNoMemory4 ?? true)
            
        }
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
