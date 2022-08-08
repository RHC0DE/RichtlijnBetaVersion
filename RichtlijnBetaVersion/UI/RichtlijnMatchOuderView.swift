//
//  RichtlijnMatchView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct RichtlijnMatchOuderView: View {
    
    @State var showSheet: Bool = false
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
                
                Spacer()
                
                Form {
                    
                    Section(header: Text("Links / informatie voor ouders")) {
                        Link("De richtlijn", destination: URL(string: "https://richtlijnenjeugdhulp.nl/wp-content/uploads/2022/03/DEF_Richtlijn-Samen-beslissen_info-voor-ouders-V3_2021-1.pdf")!)
                        
                        Link("Vragenkaartje", destination: URL(string: "https://richtlijnenjeugdhulp.nl/wp-content/uploads/2015/09/Vragenkaart_Materiaal-Clienten_definitief.pdf")!)
                        
                        Link("Keuzehulp bij beslissen van de hulp", destination: URL(string: "https://richtlijnenjeugdhulp.nl/wp-content/uploads/2016/11/Tools-Keuzehulp-ouders-en-jeugdige.pdf")!)
                        
                        Link("Checklist ‘Samen beslissen over passende hulp’", destination: URL(string: "https://richtlijnenjeugdhulp.nl/wp-content/uploads/2016/11/Tool-Shared-Decision-Making.pdf")!)
                        
                         Button(action:  {
                             
                             showSheet.toggle()
                             
                         }, label: {
                             
                             Text("Belangrijke aandachtspunten om tot een gezamenlijk besluit te komen in het beslisproces")

                         })

                         .sheet(isPresented: $showSheet, content: {
                         AandachtspuntenView()
                             
                         })
                   
                         Button(action:  {
                             
                             showSheet.toggle()
                             
                         }, label: {
                             
                             Text("Tips om de eerste stap te zetten om in gesprek te gaan met een hulpverlener ")

                         })

                         .sheet(isPresented: $showSheet, content: {
                         EersteStapGesprekView()
                             
                         })
                        
                    }
                    
                }
                
            }
            
        }
        
    }
}

struct RichtlijnMatchView_Previews: PreviewProvider {
    
    static var previews: some View {
        RichtlijnMatchOuderView()
    }
    
}
