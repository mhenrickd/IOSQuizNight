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
    var rightOption : Int!
    var scoreboard : Int = 0
    
    func loadQuestions () {
        if(cities.count == 0){
            performSegue(withIdentifier: "gameOver", sender: self)
            return
        }
        let indice = Int(arc4random_uniform(UInt32(cities.count)))
        let city = cities [indice]
        cities.remove(at: indice)
        
        /* let imageName = cidade.replacingOccurrences(of: " ", with: "").lowercased() + ".jpg" */
        dicaImg.image = UIImage(named: city)
        
        var myOptions = randomize(vetor: options)
        rightOption = 0
        for (index, option) in myOptions.enumerated(){
            if option == city {
                rightOption = index
                break
            }
        }
        if rightOption >= 4 {
            let newRightOption = Int(arc4random_uniform(UInt32(4)))
            myOptions.swapAt(rightOption, newRightOption)
            rightOption = newRightOption
        }
         
        
        var option = 0
        for view in stackButtons.subviews{
            if let btn = view as? UIButton {
                btn.setTitle(myOptions[option], for: .normal)
                option += 1
            }
        }
        
    }
    func randomize(vetor : [String]) -> [String] {
        var vetorModificavel = vetor
        if vetor.count < 2 {return vetor}
        for i in 0..<vetor.count - 1 {
            let j = Int(arc4random_uniform(UInt32(vetor.endIndex - i))) + i
            if i != j{
                vetorModificavel.swapAt(i, j)
            }
        }
        return vetorModificavel
    }
    
    func buttonClick (_ num: Int){
        if num == rightOption {
            print("Acertou!!!")
            scoreboard += 1
        } else {
            print("Eroooou")
            performSegue(withIdentifier: "gameOver", sender: self)
        }
        loadQuestions()
    }
    
    @IBAction func btn1Click(_ sender: Any) {
        buttonClick(0)
    }
    @IBAction func btn2Click(_ sender: Any) {
        buttonClick(1)
    }
    @IBAction func btn3Click(_ sender: Any) {
        buttonClick(2)
    }
    @IBAction func btn4Click(_ sender: Any) {
        buttonClick(3)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        options.append(contentsOf: cities)
        loadQuestions()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destino = segue.destination as? GameOverViewController{
                destino.score = scoreboard
            }
        }
}
