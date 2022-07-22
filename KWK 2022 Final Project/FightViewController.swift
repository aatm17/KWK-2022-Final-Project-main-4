//
//  FightViewController.swift
//  KWK 2022 Final Project
//
//  Created by India Poetzscher on 7/21/22.
//

import UIKit

class FightViewController: UIViewController {
    
    var bossFightMemory = SeventhViewController().hasMemory

    override func viewDidLoad() {
        super.viewDidLoad()
        print(bossFightMemory)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "monsterdoor")!)
        // Do any additional setup after loading the view.
    }
    @IBAction func fightButton(_ sender: Any) {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "nomonster")!)
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
