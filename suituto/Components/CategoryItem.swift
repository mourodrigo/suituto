//
//  CategoryItem.swift
//  suituto
//
//  Created by Rodrigo Bueno Tomiosso on 27/06/22.
//

import SwiftUI

struct CategoryItem: View {
    var landMark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landMark.image
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landMark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landMark: ModelData().landmarks[0])
    }
}
