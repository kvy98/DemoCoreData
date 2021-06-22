//
//  HomeCell.swift
//  DemoCoreData
//
//  Created by Khánh Vỹ Đinh on 21/06/2021.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.borderWidth=1
        self.layer.cornerRadius=10
        self.layer.borderColor = UIColor.red.cgColor
        // Initialization code
    }

}
