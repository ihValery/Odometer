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
    
    @State private var number: Int = 100
    
    private var header: Text {
        Text("Create Odometer")
            .font(.title2)
            .foregroundColor(.secondary)
    }
    
    private var simpleNumber: Text {
        Text(number.description)
            .font(.system(size: 100, weight: .bold, design: .rounded))
            .foregroundColor(.accentColor)
    }
    
    private var generateRandomNumberButton: some View {
        Button {
            number = .random(in: 99...999)
        } label: {
            Text("Generate random number")
                .foregroundColor(.white)
                .font(.title2)
                .padding()
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 13, style: .continuous))
                .padding(.horizontal)
        }
    }


    //MARK: Body
    
    var body: some View {
        VStack(spacing: 0) {
            header
            
            simpleNumber

            generateRandomNumberButton
        }
    }
}

//MARK: - PreviewProvider

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
