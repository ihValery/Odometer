//
//  CustomFontModifier.swift
//  Odometer
//
//  Created by Валерий Игнатьев on 21.06.22.
//

import SwiftUI

//MARK: - CustomFontModifier

struct CustomFontModifier: ViewModifier {
    var size: CGFloat = 30
    
    func body(content: Content) -> some View {
        content.font(.custom("HanaleiFill-Regular", size: size))
    }
}

extension View {
    func hanaleiFillFont(size : CGFloat) -> some View {
        self.modifier(CustomFontModifier(size: size))
    }
}
