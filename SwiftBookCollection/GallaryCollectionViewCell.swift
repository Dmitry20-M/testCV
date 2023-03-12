//
//  GallaryCollectionViewCell.swift
//  SwiftBookCollection
//
//  Created by Mac ыыы on 12.03.2023.
//

import UIKit

class GallaryCollectionViewCell: UICollectionViewCell {
        
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
        backgroundColor = .white// цвет ячейки будет белый
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func layout() {
        addSubview(mainImageView)
        addSubview(nameLabel)
        addSubview(smallDiscription)
        addSubview(likeImageView)
        addSubview(costLabel)
        
        NSLayoutConstraint.activate([
            
            mainImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            mainImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            mainImageView.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            mainImageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1/3),
            
            
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            nameLabel.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 12),
            
            
            smallDiscription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            smallDiscription.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            smallDiscription.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2, constant: 10),
            
            
            likeImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            likeImageView.topAnchor.constraint(equalTo: smallDiscription.bottomAnchor, constant: 30),
            likeImageView.widthAnchor.constraint(equalToConstant: 24),
            likeImageView.heightAnchor.constraint(equalToConstant: 24),
            
            
            costLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            costLabel.centerYAnchor.constraint(equalTo: likeImageView.centerYAnchor),
        ])
    }
    
}
