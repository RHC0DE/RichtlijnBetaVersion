//
//  StartView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct StartView: View {
        
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                systemBackground()
                
                VStack {
                    
                    HStack {
                        
                        NavigationLink(destination: ChoiceView().navigationBarHidden(true)) {
                            
                            LeftArrowBtn()
                        }
                        
                        Spacer()
                        
                    }.padding(.leading)
                    
                    
                    Text("Vragenlijst")
                        .font(.system(size: 40, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding()
                    
                    Image("Richtlijn_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                    
                    
                    Text("Om er achter te komen welke richtlijn het beste aansluit op jouw huidge situatie dient er een vragenlijst beantwoord te worden.")
                        .font(.system(size: 15, weight: .semibold))
                        .lineLimit(10)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.black)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: QuestionView().navigationBarHidden(true)) {
                        
                        ButtonUI(btnTitle: "BEGINNEN")
                            .padding()
   
                    }
                    
                }
                
            }.navigationBarHidden(true)
        }
        
    }
    
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}

