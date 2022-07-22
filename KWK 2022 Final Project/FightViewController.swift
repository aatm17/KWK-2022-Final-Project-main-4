//
//  FightViewController.swift
//  KWK 2022 Final Project
//
//  Created by India Poetzscher on 7/21/22.
//

import UIKit

class FightViewController: UIViewController {
    
    var hasNoMemory3: Bool? = false
    
    @IBOutlet weak var bearMonster: UIImageView!
    @IBOutlet weak var label1: UIButton!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
//    var bossFightMemory = SeventhViewController().hasMemory
    var button1Counter: Int = 10

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(bossFightMemory)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "blueRoom")!)
        label2.isHidden = true
        button1.isHidden = true
        button2.isHidden = true
        print(hasNoMemory3 ?? false)
        // Do any additional setup after loading the view.
    }
    @IBAction func fightButton(_ sender: Any) {
        button1Counter -= 1
        label2.isHidden = false
        label2.text = "Keep fighting! \(String(button1Counter)) hits left!"
        if button1Counter == 0 {
            label2.text = "You did it!"
            bearMonster.isHidden = true
            button1.isHidden = false
            button2.isHidden = false
            label1.isHidden = true
        }
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is WinViewController {
        let winVC = segue.destination as? WinViewController
            winVC!.hasNoMemory4 = hasNoMemory3
        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


}
