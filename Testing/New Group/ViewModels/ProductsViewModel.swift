//
//  ProductsViewModel.swift
//  Testing
//
//  Created by Kareem Mohammed on 2/13/18.
//  Copyright © 2018 Testing. All rights reserved.
//

import UIKit

class ProductsViewModel: NSObject {
    var list = [Product]()
    
    func fillArray() {
        
        list = [Product(imageUrl: "https://cimages.prvd.com/is/image/ProvideCommerce/FE_15_CDLD_W1_SQ?$PFCProductImage$", name: "Yellow flower", price: "1.350"),
        Product(imageUrl: "https://res.cloudinary.com/prestige-gifting/image/fetch/fl_progressive,q_95,e_sharpen:50,w_480/e_saturation:05/https://www.prestigeflowers.co.uk/images/NF4016-130116.jpg", name: "Purple Flowers", price: "6.350"),
        Product(imageUrl: "https://fyf.tac-cdn.net/images/products/large/BF116-11KM.jpg", name: "Valentine Color", price: "20.500"),
        Product(imageUrl: "https://www.flowersnfruits.com/public/templatefnf/image/v3.png", name: "Spring Life", price: "19.150"),
        Product(imageUrl: "https://www.ftdimg.com/pics/products/zoom/18-V2_600x600.jpg", name: "New Collection", price: "23.900")]
    }
    
    func productAt(indexPath: NSIndexPath) -> Product {
        return list[indexPath.row]
    }
    
    func numberOfItems() -> Int {
        return list.count
    }

}
