//
//  OnBoardView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import SwiftUI

struct OnBoardView: View {
    
    @State private var currentStep = 0
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                VStack {
                    
                    HStack {
                        
                        NavigationLink(destination: WelcomeView().navigationBarHidden(true)) {
                            
                            LeftArrowBtn()
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            if self.currentStep <  onBoardingSteps.count - 1 {
                                self.currentStep += 1
                            }
                        }, label: {
                            
                            Text(currentStep <  onBoardingSteps.count - 1 ? "Volgende" : "")
                                .bold()
                                .font(.title2)
                                .foregroundColor(Color.blue)
                                .padding()

                        })
                        .buttonStyle(PlainButtonStyle())
                    }.padding(.leading)
                    
                    Spacer()
                    
                    TabView(selection: $currentStep) {
                        ForEach(0..<onBoardingSteps.count) { item in
                            ZStack {
                                
                                VStack {
                                    Image(onBoardingSteps[item].image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 250, height: 250)                                    
                                    
                                    Text(onBoardingSteps[item].title)
                                        .font(.system(size: 50, weight: .semibold))
                                        .foregroundColor(.primary)
                                        .multilineTextAlignment(.center)
                                        .padding()
                                    
                                    Text(onBoardingSteps[item].description)
                                        .font(.title3)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.secondary)
                                        .padding()
                                    
                                }.navigationBarHidden(true)
                                 .tag(item)
                            }
                        }
                        
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    
                    HStack {
                        ForEach(0..<onBoardingSteps.count) { item in
                            if item == currentStep {
                               
                                Rectangle()
                                    .frame(width: 20, height: 10)
                                    .cornerRadius(10)
                                    .foregroundColor(Color(Colors.lightBlue))
                            } else {
                                Circle()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(.gray)
                                    
                            }
                        }
                    }.padding(.bottom, 24)

                    
                    NavigationLink(destination: ChoiceView().navigationBarHidden(true)) {
                        
                        ButtonUI(btnTitle: "Aan de slag")
                            .padding()
                    }


                }
                
            }
            
        }
        
    }
}

struct OnBoardingStep {
    
    let image: String
    let title: String
    let description: String
    
}

private let onBoardingSteps = [
    
    OnBoardingStep(image: "ouder(s)", title: "Ouders", description: "In elk gezin is weleens wat, maar soms is er meer aan de hand. In zulke gevallen kan het zijn dat hulp nodig is om het gezin te ondersteunen."),
    OnBoardingStep(image: "jeugdige", title: "Jeugdigen", description: "De Richtlijnen ondersteunen niet alleen professionals en ouders. Ook kunnen jongeren mee beslissen wat de best passende hulp is in een specifieke situatie."),
    OnBoardingStep(image: "profesional", title: "Profesionals", description: "De invoer van het gebruik van richtlijnen vindt plaats op de werkvloer. Voor veel professionals is het werken met richtlijnen nieuw. Het gebruik van richtlijnen is in principe de verantwoordelijkheid van de professional zelf.")
    
]
struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}
