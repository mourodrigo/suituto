//
//  CategoryHome.swift
//  suituto
//
//  Created by Rodrigo Bueno Tomiosso on 24/06/22.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                        CategoryRow(categoryName: key, items: modelData.categories[key] ?? [])
                }.listRowInsets(EdgeInsets())
                .padding(.top, 20)
            }
            .navigationTitle("Featured")
            .listStyle(.sidebar)
            }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
