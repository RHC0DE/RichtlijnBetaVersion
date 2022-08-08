//
//  Button.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct ButtonUI: View {
    
    @State var btnTitle: String
    
    var body: some View {
        
        HStack{
            Text(btnTitle)
                .bold()
                .font(.title2)
                .frame(width: 280, height: 50)
                .background(Color(Colors.lightBlue))
                .foregroundColor(.primary)
                .cornerRadius(50)
                .shadow(radius: 4)
        }

        
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonUI(btnTitle: "Test")
    }
}
