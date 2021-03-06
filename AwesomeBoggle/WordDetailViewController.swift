//
//  WordDetailViewController.swift
//  AwesomeBoggle
//
//  Created by dev1 on 2/23/17.
//  Copyright © 2017 Neem. All rights reserved.
//

import Foundation
import UIKit

class WordDetailViewController: UIViewController, WordDetailViewProtocol {
    let wordDetailView: WordDetailView
    let boggleModel: BoggleModel
    
    init(wordDetailView: WordDetailView = WordDetailView(), boggleModel: BoggleModel = BoggleModel()) {
        self.wordDetailView = wordDetailView
        self.boggleModel = boggleModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = wordDetailView
        wordDetailView.delegate = self
    }
    
    func modalTapped() {
        self.present(ScoreViewController(), animated: true, completion: nil)
    }
}
