//
//  GallaryCollectionViewCell.swift
//  SwiftBookCollection
//
//  Created by Mac ыыы on 12.03.2023.
//

import UIKit

class GallaryCollectionViewCell: UICollectionViewCell {
    
    static let reuseId = "GallaryCollectionViewCell"
    
    let mainImageView: UIImageView = {
        let imageView = UIImageView()
//        imageView.backgroundColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
     let nameLabel: UILabel = {
        let label = UILabel()
        label.tintColor = .black
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let smallDiscription: UILabel = {
        let label = UILabel()
        label.tintColor = .black
        label.font = UIFont.systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    let likeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "like")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let costLabel: UILabel = {
        let label = UILabel()
        label.tintColor = .black
        label.font = UIFont.systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mainImageView)
        addSubview(nameLabel)
        addSubview(smallDiscription)
        addSubview(likeImageView)
        addSubview(costLabel)
        
        backgroundColor = .white// цвет ячейки будет белый
        
        mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 40).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3).isActive = true
        
        
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 12).isActive = true
        
        
        smallDiscription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        smallDiscription.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8).isActive = true
        smallDiscription.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: 10).isActive = true
        
        
        likeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        likeImageView.topAnchor.constraint(equalTo: smallDiscription.bottomAnchor, constant: 30).isActive = true
        likeImageView.widthAnchor.constraint(equalToConstant: 24).isActive = true
        likeImageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        
        costLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        costLabel.centerYAnchor.constraint(equalTo: likeImageView.centerYAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
