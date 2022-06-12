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

    //MARK: Body
    
    var body: some View {
        VStack(spacing: 0) {
            header
            
            Text(number.description)
                .font(.system(size: 100))
                .bold()
                .foregroundColor(.accentColor)
            
            Button {
                
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
    }
}

//MARK: - PreviewProvider

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
