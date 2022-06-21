//
//  FavoriteButton.swift
//  suituto
//
//  Created by Rodrigo Bueno Tomiosso on 21/06/22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            let image = isSet ? "star.fill" : "star"
            let color:Color = isSet ? .yellow : .gray
            Label("Toogle Favorite", systemImage: image)
                .labelStyle(.iconOnly)
                .foregroundColor(color)
        }

    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
