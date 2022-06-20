//
//  Landmark.swift
//  suituto
//
//  Created by Rodrigo Bueno Tomiosso on 20/06/22.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
