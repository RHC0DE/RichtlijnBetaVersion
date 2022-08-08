//
//  Questionmark.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct Questionmark: View {
    var body: some View {
        
        Image("questionMark")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
    }
}

struct Questionmark_Previews: PreviewProvider {
    static var previews: some View {
        Questionmark()
    }
}
