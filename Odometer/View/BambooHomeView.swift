//
//  BambooHomeView.swift
//  Odometer
//
//  Created by Валерий Игнатьев on 21.06.22.
//

import SwiftUI

//MARK: - BambooHomeView

struct BambooHomeView: View {
    
    //MARK: Properties
    
    private var cardViewModel = CardVM()
    
    private var backgroundImage: some View {
        Image("backgroundBamboo")
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
    }
    
    private var header: some View {
        VStack {
            Text("Infinity")
            Text("Carusel")
        }
        .hanaleiFillFont(size: 80)
        .foregroundColor(.greenLeaf)
        .shadow(color: .conifer, radius: 4, x: 0, y: 0)
        .shadow(color: .bayLeaf, radius: 1, x: 0, y: 0)
    }
    
    //MARK: Body
    
    var body: some View {
        VStack {
            header

            Spacer()
            
            GeometryReader { grProxy in
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(cardViewModel.bambooModels) { card in
                            OneCardView(card)
                        }
                        .frame(width: grProxy.size.width)
                    }
                }
            }
            .frame(height: UIScreen.main.bounds.width)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundImage)
    }
}

//MARK: - PreviewProvider

struct BambooHomeView_Previews: PreviewProvider {
    static var previews: some View {
        BambooHomeView()
    }
}
