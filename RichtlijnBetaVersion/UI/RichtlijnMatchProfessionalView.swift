//
//  RichtlijnMatchProfessionalView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct RichtlijnMatchProfessionalView: View {
    
    @State var showSheet : Bool = false
    
    init() {
        UITableView.appearance().backgroundColor =
            .clear
    }
    
    var body: some View {
        
        ZStack {
                        
            VStack {
                
                HStack {
                    
                    NavigationLink(destination: RichtlijnMatchParOrProf().navigationBarHidden(true)) {
                        
                        LeftArrowBtn()
                    }
                    
                    Spacer()
                    
                }.padding(.leading)
                
                Form {
                    
                    Section(header: Text("Links / informatie voor professionals")) {
                        
                        Link("Diversiteit en cultuursensitief werken ", destination: URL(string: "https://richtlijnenjeugdhulp.nl/professionals/diversiteit-en-cultuursensitief-werken/")!)
                        
                        Link("Juridische betekenis van de richtlijn", destination: URL(string: "https://richtlijnenjeugdhulp.nl/juridische-betekenis-van-de-richtlijnen/")!)
                        
                        
                        Link("Werkkaart ‘Samen beslissen over passende hulp’", destination: URL(string: "https://richtlijnenjeugdhulp.nl/wp-content/uploads/2022/03/DEF_Richtlijn-Samen-beslissen_Werkkaarten-V3_032022-1.pdf")!)
                        
                        
                        Link("Vraagkaartje", destination: URL(string: "https://richtlijnenjeugdhulp.nl/wp-content/uploads/2015/09/Vragenkaart_Materiaal-Clienten_definitief.pdf")!)
                        
                        
                        Link("Checklist hulpverleners ‘Samen beslissen over passende hulp’", destination: URL(string: "https://richtlijnenjeugdhulp.nl/wp-content/uploads/2016/11/Tool-Shared-Decision-Making.pdf")!)
                        
                        Button(action:  {
                            
                            showSheet.toggle()
                            
                        }, label: {
                            
                            Text("Tips samenwerkingsrelatie")

                        })

                        .sheet(isPresented: $showSheet, content: {
                            SamenwerkingsRelatieView()
                            
                        })
                        
                    }
                    
//                    Button(action:  {
//                        
//                        showSheet.toggle()
//                        
//                    }, label: {
//                        
//                        Text("Samenwerkingsrelatie")
//                        ButtonUI(btnTitle: "Samenwerkingsrelatie")
//
//                    })
//
//                    .sheet(isPresented: $showSheet, content: {
//                        SamenwerkingsRelatieView()
//                        
//                    })
                    
                }
                

                
                Spacer()
                
            }
            
        }
    }
}

struct RichtlijnMatchProfessionalView_Previews: PreviewProvider {
    static var previews: some View {
        RichtlijnMatchProfessionalView()
    }
}
