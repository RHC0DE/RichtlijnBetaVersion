//
//  RichtlijnDetailView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct RichtlijnDetailView: View {
    
    @State var selectedRichtlijn: Richtlijn

    var body: some View {
        
        ZStack {
            
                VStack {
                    
                    HStack {
                        
                        NavigationLink(destination: RichtlijnListView().navigationBarHidden(true)) {
                            
                            LeftArrowBtn()
                        }
                        
                        Spacer()
                        
                    }.padding(.leading)

                    Image(selectedRichtlijn.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                        .cornerRadius(12)
                        .padding()
                    
                    
                    Text("Beschrijving:")
                        .font(.title2)
                        .foregroundColor(.primary)
                        .fontWeight(.semibold)
                    
                    Divider()
                    
                    
                    Text(selectedRichtlijn.description)
                        .font(.system(size: 15, weight: .semibold))
                        .lineLimit(10)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.secondary)
                        .padding()
                    
                    Spacer()
                    
                    Link(destination: selectedRichtlijn.url, label: {
                        
                        ButtonUI(btnTitle: "Meer info")
                        .padding()

                        
                    })

                    
                }
            
            }
        }
    }
    
    struct RichtlijnDetailView_Previews: PreviewProvider {
        static var previews: some View {
            RichtlijnDetailView(selectedRichtlijn: Richtlijn.init(image: "ADHD", name: "AHDH", description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. ", url: URL(string: "https://richtlijnenjeugdhulp.nl/adhd/")!))
        }
    }
