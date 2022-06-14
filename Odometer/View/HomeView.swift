//
//  HomeView.swift
//  Odometer
//
//  Created by Валерий Игнатьев on 12.06.22.
//

import SwiftUI

//MARK: - HomeView

struct HomeView: View {
    
    //MARK: Properties
    
    private var cardViewModel = CardVM()

    private var backgroundImage: some View {
        Image("backgroundFoto")
            .resizable()
            .ignoresSafeArea()
            .scaledToFill()
    }
    
    private var header: some View {
        Text("Infinity Carusel")
            .font(.system(size: 40))
            .foregroundColor(.muddyWaters)
            .shadow(color: .oldCopper, radius: 10, x: 0, y: 0)
    }

    //MARK: Body
    
    var body: some View {
        ZStack(alignment: .bottom) {
//            header
            
            GeometryReader { grProxy in
                ForEach(cardViewModel.models) { card in
                    OneCardView(card)
                }
                .frame(width: grProxy.size.width)
            }
        }
//        .background(backgroundImage)
    }
}

//MARK: - PreviewProvider

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
