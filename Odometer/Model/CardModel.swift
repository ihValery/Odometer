//
//  CardModel.swift
//  Odometer
//
//  Created by Валерий Игнатьев on 13.06.22.
//

import SwiftUI

//MARK: - CardModel

struct CardModel: Identifiable {
    
    //MARK: Properties

    let id: UUID
    let number: Int
    let color: Color

    //MARK: Initializer
        
    init(_ number: Int,_ color: Color) {
        id = UUID()
        self.number = number
        self.color = color
    }
}
