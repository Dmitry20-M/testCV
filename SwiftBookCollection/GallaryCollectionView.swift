//
//  GallaryCollectionView.swift
//  SwiftBookCollection
//
//  Created by Mac ыыы on 12.03.2023.
//

import UIKit

class GallaryCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var cells = [SushiModel]()
    

     init() {
         let layout = UICollectionViewFlowLayout()
         layout.scrollDirection = .horizontal
         super.init(frame: .zero, collectionViewLayout: layout)
         
//         backgroundColor = .green
         backgroundColor = .systemGray6
         delegate = self
         dataSource = self
         register(GallaryCollectionViewCell.self, forCellWithReuseIdentifier: GallaryCollectionViewCell.reuseId)
         translatesAutoresizingMaskIntoConstraints = false
         
         layout.minimumLineSpacing = Constants.gallaryMinimumSpacing
         contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
         
         showsHorizontalScrollIndicator = false
         showsVerticalScrollIndicator = false
    }
    
    func set(cells: [SushiModel]) {
        self.cells = cells
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return cells.count
   
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: GallaryCollectionViewCell.reuseId, for: indexPath) as! GallaryCollectionViewCell
        
        cell.mainImageView.image = cells[indexPath.row].mainImage
        cell.nameLabel.text = cells[indexPath.row].sushiName
        cell.smallDiscription.text = cells[indexPath.row].smallDiscription
        cell.costLabel.text = "$\(cells[indexPath.row].cost)"
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.gallaryItemWidth, height: frame.height * 0.8) // высота collectionView
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


