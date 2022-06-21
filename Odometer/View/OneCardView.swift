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
            Rectangle()
                .frame(width: grProxy.size.width, height: grProxy.size.width)
                .background(.ultraThinMaterial)
                .mask(inversionText(grProxy))
                .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        }
        .padding()
    }
    
    init(_ card: CardModel) {
        self.card = card
    }
    
    //MARK: Private Methods

    private func inversionText(_ grProxy: GeometryProxy) -> some View {
        Text(card.number.description)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .hanaleiFillFont(size: grProxy.size.width)
            .foregroundColor(.black)
            .background(.white)
            .compositingGroup()
            .luminanceToAlpha()
    }
}

//MARK: - PreviewProvider

struct OneCardView_Previews: PreviewProvider {
    static let card = CardModel(1, .bayLeaf)
    
    static var previews: some View {
        OneCardView(card)
            .background(
                Image("backgroundBamboo")
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
            )
    }
}
