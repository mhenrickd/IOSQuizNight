//
//  GameOverViewController.swift
//  quizNight
//
//  Created by Matheus Henrick Dias on 03/03/20.
//  Copyright © 2020 Matheus Henrick Dias. All rights reserved.
//

import UIKit

class GameOverViewController: UIViewController {

    @IBAction func gameover(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    var score : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        ScoreboardLabel.text = "\(score)"
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var ScoreboardLabel: UILabel!
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
