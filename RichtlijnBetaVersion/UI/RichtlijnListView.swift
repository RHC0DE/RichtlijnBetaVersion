//
//  RichtlijnListView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct RichtlijnListView: View {
    
    @ObservedObject var viewModel = RichtlijnViewModel()
    
    init() {
        UITableView.appearance().backgroundColor =
            .clear
    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                VStack {
                    
                    HStack {
                        
                        NavigationLink(destination: ChoiceView().navigationBarHidden(true)) {
                            
                            LeftArrowBtn()
                        }
                        
                        Spacer()
                        
                    }.padding(.leading)
                    
                    Text("De richtlijnen:")
                        .font(.system(size: 30, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.primary)
                        .padding()
                    
                    Divider()
                    
                    List {
                        
                        ForEach(viewModel.richtlijnen) { richtlijn in
                            
                            HStack {
                                
                                NavigationLink(destination: RichtlijnDetailView(selectedRichtlijn: richtlijn).navigationBarHidden(true)) {
                                    
                                    Image(richtlijn.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 70)
                                        .cornerRadius(4)
                                    
                                    VStack(alignment: .leading) {
                                        
                                        Text(richtlijn.name)
                                            .font(.system(size: 11, weight: .semibold))
                                            .foregroundColor(.primary)

                                    }
                                    
                                }
                                
                                
                            }.listRowBackground(Color(Colors.lightBlue))
                            
                        }
                        
                    }
                    .listStyle(SidebarListStyle())
                    .padding()
                    
                }
                
                
            }
            .navigationBarHidden(true)
            
        }
        
    }
    
}

struct RichtlijnListView_Previews: PreviewProvider {
    static var previews: some View {
        RichtlijnListView()
    }
}
