//
//  RichtlijnMatchParOrProf.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct RichtlijnMatchParOrProf: View {
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                                
                VStack(spacing: 45) {
                    
                    HStack {
                        
                        NavigationLink(destination: SamenView().navigationBarHidden(true)) {
                            
                            LeftArrowBtn()
                            
                            Spacer()
                            
                        }
                        
                        Spacer()
                        
                    }.padding(.leading)
                    
                    Text("Maak een keuze uit:")
                        .font(.system(size: 30, weight: .semibold))
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                        
                        NavigationLink(destination: RichtlijnMatchOuderView().navigationBarHidden(true)) {
                        
                            ButtonUI(btnTitle: "Info ouders & jeugd")
                                .padding()

                        }
                    
                    NavigationLink(destination: RichtlijnMatchProfessionalView().navigationBarHidden(true)) {
                    
                        ButtonUI(btnTitle: "Info profesionals")
                            .padding()

                    }
                    
                    Spacer()
                    
                }.padding()
                
            }.navigationBarHidden(true)
            
        }
        
    }
}

struct RichtlijnMatchParOrProf_Previews: PreviewProvider {
    static var previews: some View {
        RichtlijnMatchParOrProf()
    }
}
