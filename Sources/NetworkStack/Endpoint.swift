    //
    //  Endpoint.swift
    //  
    //
    //  Created by Adam Pieśkiewicz on 24/08/2022.
    //

import Foundation

internal enum Endpoint {
    
    case consultants
    
    var url: URL {
        switch self {
        case .consultants: return URL(string: "https://jsonplaceholder.typicode.com/users")!
        }
    }
}
