//
//  GameOverViewController.swift
//  quizNight
//
//  Created by Matheus Henrick Dias on 04/03/20.
//  Copyright © 2020 Matheus Henrick Dias. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    @IBOutlet weak var scoreboardLabel: UILabel!
    
    @IBAction func gameover(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    var score : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreboardLabel.text = "\(score)"
        
        
        
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
