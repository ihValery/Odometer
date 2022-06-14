//
//  CardVM.swift
//  Odometer
//
//  Created by Валерий Игнатьев on 14.06.22.
//

import SwiftUI

//MARK: - CardVM

final class CardVM: ObservableObject {
    
    //MARK: Properties
    
    @Published var models: [CardModel] = [
        CardModel(1, .muddyWaters),
        CardModel(2, .oldCopper),
        CardModel(3, .englishWalnut)
    ]
}
