//
//  ScoreView.swift
//  AwesomeBoggle
//
//  Created by dev1 on 2/23/17.
//  Copyright © 2017 Neem. All rights reserved.
//

import Foundation
import UIKit

protocol ScoreViewProtocol: class {
    func dismissTapped()
}

class ScoreView: UIControl {
    weak var delegate: ScoreViewProtocol?
    
    init() {
        super.init(frame: CGRect.zero)
        backgroundColor = .blue
        self.addTarget(self, action: #selector(dismissModal), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func dismissModal() {
        self.delegate?.dismissTapped()
    }
}
