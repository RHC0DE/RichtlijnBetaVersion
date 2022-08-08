//
//  ThumbsUpDownView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct ThumbsDownBtn: View {
        
    var body: some View {
        
        HStack{
            Text("Nee") 
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding()
          
            Image(systemName: "hand.thumbsdown.circle.fill")
                .frame(width: 20, height: 2)
                .padding()
                .foregroundColor(.red)
        
        }
        .frame(width: 150, height: 50)
        .background((Color(Colors.lightBlue)))
        .foregroundColor(Color.black)
        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
        
    }
}

struct ThumbsUpDownBtn_Previews: PreviewProvider {
    static var previews: some View {
        ThumbsDownBtn()
    }
}

