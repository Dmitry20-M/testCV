//
//  ViewController.swift
//  SwiftBookCollection
//
//  Created by Mac ыыы on 12.03.2023.
//

import UIKit

class ViewController: UIViewController {

    private var gallaryCollectionView = GallaryCollectionView()
    
    private let deliveryLabel: UILabel = {
        let label = UILabel()
        label.tintColor = .black
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Delivery"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(gallaryCollectionView)
        view.addSubview(deliveryLabel)
        
        deliveryLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        deliveryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        deliveryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        
        
        
        gallaryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        gallaryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        gallaryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        gallaryCollectionView.topAnchor.constraint(equalTo: deliveryLabel.bottomAnchor, constant: 10).isActive = true
        
        gallaryCollectionView.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        
        gallaryCollectionView.set(cells: SushiModel.fetchSushi())

    }


}




