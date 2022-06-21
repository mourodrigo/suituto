//
//  DetailView.swift
//  suituto
//
//  Created by Rodrigo Bueno Tomiosso on 20/06/22.
//

import SwiftUI

struct DetailView: View {
        
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
//                .ignoresSafeArea()
                .frame(height: 200)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)

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
    static var previews: some View {
        DetailView(landmark: landmarks[0])
    }
}
