//
//  ScoreViewController.swift
//  AwesomeBoggle
//
//  Created by dev1 on 2/23/17.
//  Copyright © 2017 Neem. All rights reserved.
//

import Foundation
import UIKit

class ScoreViewController: UIViewController, ScoreViewProtocol {
    private let scoreView: ScoreView
    
    init(scoreView: ScoreView = ScoreView()) {
        self.scoreView = scoreView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = scoreView
        scoreView.delegate = self
    }
    
    func dismissTapped() {
        self.dismiss(animated: true, completion: nil)
    }
}
