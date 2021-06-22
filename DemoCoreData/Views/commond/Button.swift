//
//  Button.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 20/06/2021.
//

import UIKit

class Button: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    var cornerRadius:Float=0{
        didSet{
            if cornerRadius>0&&cornerRadius>oldValue{
                self.layer.cornerRadius=CGFloat(cornerRadius)
            }
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
}
