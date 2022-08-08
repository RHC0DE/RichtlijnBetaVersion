//
//  SamenView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct SamenView: View {
    
    @State private var confirm = false
    @State private var didConfirmChoice = false
    
    var body: some View {
        
        ZStack {
            
            VStack {
                                
                Text("Samen beslissen")
                    .font(.system(size: 22, weight: .semibold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
                    .padding()
                
                Divider()
                
                Text("Gaat mijn vraag/ situatie over het verkrijgen van informatie hoe je samen met ouders en jeugdige beslist over passende hulp, een samenwerkingsrelatie aan gaat, het beslisproces, vraagverheldering, probleem- en krachtenanalyse en doelen samen met ouders en jeugdigen opstelt?")
                    .font(.system(size: 15, weight: .semibold))
                    .lineLimit(10)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .padding()
                
                Spacer()
                
                Questionmark()

                Spacer()
                
                HStack {
                    
                    VStack{
                        
                        NavigationLink(destination: RichtlijnMatchParOrProf().navigationBarHidden(true), isActive: $didConfirmChoice) {
                            
                        }
                        
                        Button {
                            
                            confirm.toggle()
                            
                        } label: {
                            
                            ThumbsUpBtn()

                        }
                        
                        
                    }.padding()
                        .alert(isPresented: $confirm, content: {
                            Alert(title: Text("Volgens uw keuzes:"), message: Text("past de richtlijn 'Samen met ouders en jeugdige beslissen over passende hulp' bij uw situatie."),
                                  
                                  primaryButton: .default(Text("Volgende"), action:  {
                                didConfirmChoice = true
                                
                                
                            }),
                                  secondaryButton: .destructive(Text("Annuleren"), action: {
                            }))
                        })
                    
                    VStack{
                        
                        NavigationLink(destination: RichtlijnListView().navigationBarHidden(true)) {
                            
                            ThumbsDownBtn()
                            
                        }
                        
                        
                    }.padding()
                    
                }.padding()
                
            }
            
        }
    }
}

struct SamenView_Previews: PreviewProvider {
    static var previews: some View {
        SamenView()
    }
}
