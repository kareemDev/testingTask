//
//  ProductCollectionViewCell.swift
//  Testing
//
//  Created by Kareem Mohammed on 2/13/18.
//  Copyright © 2018 Testing. All rights reserved.
//

import UIKit
import SDWebImage

class ProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!

    func setup(product: Product) {
        
        nameLabel.text = product.name
        itemImageView.sd_setImage(with: URL(string: product.imageUrl), placeholderImage: UIImage(named: "placeholder.png"))
        priceLabel.attributedText = setPrice(price: "\(String(describing: product.price)) KD")
        
    }
    
    func setPrice(price: String) -> NSAttributedString {
        let priceAttribute = [ NSAttributedStringKey.foregroundColor: UIColor.lightGray ]
        let priceAttrString = NSAttributedString(string: "Price: ", attributes: priceAttribute)
        
        let myAttribute = [ NSAttributedStringKey.foregroundColor: UIColor.black ]
        let myAttrString = NSAttributedString(string: price, attributes: myAttribute)
        
        let totalText = NSMutableAttributedString(attributedString: priceAttrString)
        totalText.append(myAttrString)
        return totalText
    }
    
}
