//
//  ThumbsUpBtn.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct ThumbsUpBtn: View {
    
    
    var body: some View {
        
        HStack{
            Text("Ja")
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding()
          
            Image(systemName: "hand.thumbsup.circle.fill")
                .frame(width: 20, height: 2)
                .padding()
                .foregroundColor(.green)
        
        }
        .frame(width: 150, height: 50)
        .background((Color(Colors.lightBlue)))
        .foregroundColor(Color.black)
        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        
    }
}

struct ThumbsUpBtn_Previews: PreviewProvider {
    static var previews: some View {
        ThumbsUpBtn()
    }
}
