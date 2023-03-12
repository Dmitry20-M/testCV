//
//  SushiModel.swift
//  SwiftBookCollection
//
//  Created by Mac ыыы on 12.03.2023.
//

import Foundation
import UIKit


struct SushiModel {
    var mainImage: UIImage
    var sushiName: String
    var smallDiscription: String
    var cost: Int
    
    
    static func fetchSushi() -> [SushiModel] {
        let firstItem = SushiModel(mainImage: UIImage(named: "sushi-1")!,
                                   sushiName: "Jengibre",
                                   smallDiscription: "Original Japanese",
                                   cost: 8)
        
        let secondItem = SushiModel(mainImage: UIImage(named: "sushi-1")!,
                                   sushiName: "Caviar",
                                   smallDiscription: "Original Japanese",
                                   cost: 8)
        
        let thirdItem = SushiModel(mainImage: UIImage(named: "sushi-1")!,
                                   sushiName: "Salmon",
                                   smallDiscription: "Original Japanese",
                                   cost: 8)
        
        let fouthItem = SushiModel(mainImage: UIImage(named: "sushi-1")!,
                                   sushiName: "Jengibre",
                                   smallDiscription: "Original Japanese",
                                   cost: 8)
        
        let fiveItem = SushiModel(mainImage: UIImage(named: "sushi-1")!,
                                   sushiName: "Caviar",
                                   smallDiscription: "Original Japanese",
                                   cost: 8)
        
        let sixItem = SushiModel(mainImage: UIImage(named: "sushi-1")!,
                                   sushiName: "Salmon",
                                   smallDiscription: "Original Japanese",
                                   cost: 8)
        
        
        let sevenItem = SushiModel(mainImage: UIImage(named: "sushi-1")!,
                                   sushiName: "Salmon",
                                   smallDiscription: "Original Japanese",
                                   cost: 8)

        
        let eightItem = SushiModel(mainImage: UIImage(named: "sushi-1")!,
                                   sushiName: "Salmon",
                                   smallDiscription: "Original Japanese",
                                   cost: 8)

        
        return [firstItem, secondItem, thirdItem, fouthItem, fiveItem, sixItem,sevenItem, eightItem]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 40
    static let rightDistanceToView: CGFloat = 40
    static let gallaryMinimumSpacing: CGFloat = 10
    static let gallaryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView -
                                   (Constants.gallaryMinimumSpacing / 2)) / 2 // здесь в скобках 2 это сколько картинок на экране булет 
}
