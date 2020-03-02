//
//  QuestionsViewControler.swift
//  quizNight
//
//  Created by Matheus Henrick Dias on 02/03/20.
//  Copyright © 2020 Matheus Henrick Dias. All rights reserved.
//

import UIKit

class QuestionsViewControler: UIViewController {

    @IBOutlet weak var dicaImg: UIImageView!
    @IBOutlet weak var stackButtons: UIStackView!
    
    var cities : [String] = ["Belo Horizonte", "Toronto", "New York", "Rio de Janeiro"]
    var options : [String] = ["São Paulo", "Vancouver", "Paris", "Ribeirão das Neves"]
    
    func loadQuestions () {
        if(cities.count == 0){
            return
        }
        let indice = Int(arc4random_uniform(UInt32(cities.count)))
        let city = cities [indice]
        cities.remove(at: indice)
        
        /* let imageName = cidade.replacingOccurrences(of: " ", with: "").lowercased() + ".jpg" */
        dicaImg.image = UIImage(named: city)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadQuestions()
    }
}
