//
//  CategoryRow.swift
//  suituto
//
//  Created by Rodrigo Bueno Tomiosso on 24/06/22.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]

    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            DetailView(landmark: landmark)
                        } label: {
                            CategoryItem(landMark: landmark)
                        }

                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        CategoryRow(categoryName: modelData.landmarks[0].category.rawValue,
                    items: Array(modelData.landmarks.prefix(3)))
    }
}
