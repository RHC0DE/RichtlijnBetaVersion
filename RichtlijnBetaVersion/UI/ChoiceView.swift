//
//  ChoiceView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct ChoiceView: View {
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                VStack() {
                    
                    HStack {
                        
                        NavigationLink(destination: OnBoardView().navigationBarHidden(true)) {
                            
                            LeftArrowBtn()
                            
                            Spacer()
                            
                        }
                        
                        Spacer()
                        
                    }.padding(.leading)
                    
                    
                    Text("Weet je welke richtlijn aansluit op jou vraag / situatie?")
                        .font(.system(size: 30, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Spacer()
                    
                    Questionmark()
                    
                    Spacer()

                    
                    HStack {
                        
                        VStack{
                            
                            NavigationLink(destination: RichtlijnListView().navigationBarHidden(true)) {
                                
                                ThumbsUpBtn()
                                
                            }
                            
                            
                        }.padding()
                        
                        VStack{
                            
                            NavigationLink(destination: StartView().navigationBarHidden(true)) {
                                
                                ThumbsDownBtn()

                                
                            }
                            
                            
                        }.padding()
                        
                    }.padding()
                    
                    
                }
                
            }.navigationBarHidden(true)
            
        }
        
    }
    
}

struct ChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceView()
    }
}
