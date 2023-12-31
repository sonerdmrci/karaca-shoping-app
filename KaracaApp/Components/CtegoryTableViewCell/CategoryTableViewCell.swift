//
//  CategoryTableViewCell.swift
//  KaracaApp
//
//  Created by Soner Demirci on 31.12.2023.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "CategoryTableViewCell", bundle: nil)
    }
    
    func initCell(name: String, image: UIImage){
        nameLabel.text = name
        imageView1.image = image
        imageView1.layer.cornerRadius = 23
    }
    
}
