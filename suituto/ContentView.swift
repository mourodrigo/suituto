//
//  ContentView.swift
//  suituto
//
//  Created by Rodrigo Bueno Tomiosso on 05/06/22.
//

import SwiftUI

struct ContentView: View {
    
    private let _text: String
    
    init(text: String) {
        _text = text
    }
    
    var body: some View {
        VStack {
            MapView()
                .frame(height: 200)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(_text)
                    .font(.title)

                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: "Turtle Rock")
    }
}
