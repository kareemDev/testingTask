//
//  ViewController.swift
//  Testing
//
//  Created by Kareem Mohammed on 2/13/18.
//  Copyright © 2018 Testing. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var viewModel: ProductsViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupLayoutFlow()
        viewModel = ProductsViewModel()
        viewModel.fillArray()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        collectionView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupLayoutFlow() {
        let leftAndRightPaddings: CGFloat = 0.0
        let numberOfItemsPerRow: CGFloat = 2.0
        
        let bounds = UIScreen.main.bounds
        let width = (bounds.size.width - leftAndRightPaddings*(numberOfItemsPerRow+1)) / numberOfItemsPerRow
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width + 20)
    }
}

extension ProductsViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ProductCollectionViewCell
        cell.setup(product: viewModel.productAt(indexPath: indexPath as NSIndexPath))
        return cell
    }
}

