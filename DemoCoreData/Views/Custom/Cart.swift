//
//  Cart.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 20/06/2021.
//

import UIKit

class Cart: UIView {
    @IBOutlet weak var quantityLabel: UILabel!
    override func config() {
        let size:CGFloat = frame.height*0.6 // 35.0 chosen arbitrarily
        quantityLabel.text = "5"
        quantityLabel.textAlignment = .center
        quantityLabel.bounds = CGRect(x: 0, y: 0, width: size, height: size)
        quantityLabel.center=CGPoint(x: frame.height, y: 5)
        quantityLabel.layer.cornerRadius = size / 2
        quantityLabel.layer.borderWidth = 1.0
        quantityLabel.layer.backgroundColor = UIColor.cyan.cgColor
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib(nibName: "Cart", frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")

    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
