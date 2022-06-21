//
//  DetailView.swift
//  suituto
//
//  Created by Rodrigo Bueno Tomiosso on 20/06/22.
//

import SwiftUI

struct DetailView: View {
        
    @EnvironmentObject var modelData: ModelData
    
    var landMarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id }) ?? 0
    }
    
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 200)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landMarkIndex].isFavorite)
                }

                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()
                    Text("About Turtle Rock")
                        .font(.title2)
                Text(landmark.description)
                    .font(.body)
            }
            .padding()
        }
//        .ignoresSafeArea(edges: .top)
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)

    }
}

struct DetailView_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        DetailView(landmark: landmarks[0])
    }
}
