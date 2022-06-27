//
//  ContentView.swift
//  suituto
//
//  Created by Rodrigo Bueno Tomiosso on 05/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView {
            LandmarkList()
            CategoryHome()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 13"], id: \.self) { deviceName in
            ContentView()
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}

