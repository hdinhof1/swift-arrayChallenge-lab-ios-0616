//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let quantity = [6, 4, 12, 4]
        let itemNames = ["Bananas", "Apples", "Eggs", "Rolls"]
        
        shoppingList = makeShoppingList(itemNames, quantityOfItems: quantity)
        print (shoppingList)
        
    }
    func makeShoppingList(foodNames: [String], quantityOfItems: [Int]) -> [String] {
        var list : [String] = []
        for (index, item) in foodNames.enumerate() {
            list.append("\(index + 1). \(quantityOfItems[index]) \(item)")
        }
        return list
    }

    
    
}