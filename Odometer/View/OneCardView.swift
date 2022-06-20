//
//  OneCardView.swift
//  Odometer
//
//  Created by Валерий Игнатьев on 12.06.22.
//

import SwiftUI

//MARK: - OneCardView

struct OneCardView: View {
    
    //MARK: Properties

    private var card: CardModel
    
    //MARK: Body
    
    var body: some View {
        GeometryReader { grProxy in
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(card.color)
                .frame(width: grProxy.size.width, height: grProxy.size.width)
                .mask(
                    Text(card.number.description)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .font(.system(size: grProxy.size.width, weight: .bold, design: .rounded))
                        .background(.white)
                        .compositingGroup()
                        .luminanceToAlpha()
                )
        }
        .padding()
    }
    
    init(_ card: CardModel) {
        self.card = card
    }
}

//MARK: - PreviewProvider

struct OneCardView_Previews: PreviewProvider {
    static let card = CardModel(1, .muddyWaters)
    
    static var previews: some View {
        OneCardView(card)
//            .background(.green)
    }
}
