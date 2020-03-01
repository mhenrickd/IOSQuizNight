//
//  BotaoComBorda.swift
//  quizNight
//
//  Created by Matheus Henrick Dias on 01/03/20.
//  Copyright © 2020 Matheus Henrick Dias. All rights reserved.
//

import UIKit

class BotaoComBorda: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.red.cgColor
        
    }

}
