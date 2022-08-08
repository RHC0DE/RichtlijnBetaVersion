//
//  Richtlijn.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import Foundation

public class Richtlijn: Identifiable {
    
    public var id = UUID()
    public var image: String
    public var name: String
    public var description: String
    public var url: URL
    
    public init(image :String, name :String, description :String, url : URL){
        
        self.image = image
        self.name = name
        self.description = description
        self.url = url
        
    }
    
}
