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
        layout()
    
    }
    
    private func layout() {
        view.addSubview(gallaryCollectionView)
        view.addSubview(deliveryLabel)
        gallaryCollectionView.set(cells: SushiModel.fetchSushi())
        
        NSLayoutConstraint.activate([
            
            deliveryLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            deliveryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            deliveryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            
            gallaryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            gallaryCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            gallaryCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            gallaryCollectionView.topAnchor.constraint(equalTo: deliveryLabel.bottomAnchor, constant: 10),
            gallaryCollectionView.heightAnchor.constraint(equalToConstant: 350),
        ])
    }


}




