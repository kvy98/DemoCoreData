//
//  Exts.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 22/06/2021.
//

import UIKit
import Foundation
extension UIView{
    func loadNib(nibName:String,frame:CGRect){
        let nib=Bundle.main.loadNibNamed(nibName, owner: self, options: nil)?.first as! UIView
        nib.frame=frame
        self.addSubview(nib)
        config()
    }
    @objc func config(){
        
    }
}

