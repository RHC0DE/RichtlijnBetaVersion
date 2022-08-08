//
//  LeftArrowView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct LeftArrowBtn: View {
    
    var body: some View {
        
        Image(systemName: "chevron.left")
            .font(.title2)
            .foregroundColor(.primary)
            .padding()
        
    }
    
}

struct LeftArrowBtn_Previews: PreviewProvider {
    static var previews: some View {
        LeftArrowBtn()
    }
}
