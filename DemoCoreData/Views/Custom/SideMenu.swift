//
//  SideMenu.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 22/06/2021.
//

import UIKit

class SideMenu: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func config() {
        dummyLabel.text="Dummy Tabbar"
        dummyLabel.backgroundColor = .cyan
        dummyLabel.frame=CGRect(x:0, y: 0, width: frame.width, height: frame.height*0.3)
    }
    @IBOutlet weak var dummyLabel: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib(nibName: "SideMenu", frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
}
