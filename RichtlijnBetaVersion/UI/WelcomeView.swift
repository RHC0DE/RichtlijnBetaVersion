//
//  WelcomeView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                systemBackground()
                
                VStack() {
                    
                    Spacer()
                    
                    Image("RichtlijnOnboardScreen")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 350)
                    
                    
                    Text("Wil je de juiste richtlijn verkrijgen die aansluit op jouw situatie?")
                        .font(.system(size: 30, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding()
                    
                    Text("Maak een keuze uit drie doelgroepen")
                        .font(.system(size: 20, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.051, brightness: 0.331))
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: OnBoardView().navigationBarHidden(true)) {
                        
                        ButtonUI(btnTitle: "Volgende")
                            .padding()
                       
                    }
                                    
                }
                
            }.navigationBarHidden(true)
            
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
