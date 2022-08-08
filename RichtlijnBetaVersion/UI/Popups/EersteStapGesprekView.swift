//
//  eersteStapGesprekView.swift
//  RichtlijnBetaVersion
//
//  Created by Guest User on 07/08/2022.
//

import SwiftUI

struct EersteStapGesprekView: View {
    var body: some View {
        
        ZStack{
            Color(Colors.darkBlue).ignoresSafeArea()
            VStack {
                ZStack {
                    Capsule()
                        .frame(width: 40, height: 6)
                }
                .frame(height: 40)
                .frame(maxWidth: .infinity)
                .background(Color.white.opacity(0.00001))
                
                Spacer()
                
                Text("Tips eerste stap: ")
                    .font(.system(size: 20, weight: .bold))
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)


                
                Text("• Wacht niet tot je gecontacteerd wordt, neem zelf initiatief.\n\n• Breng zelf de triade en de samenspraakfiche ter sprake: het zijn de ideale bouwstenen voor een goede trialoog.\n\n• Maak een checklist van zaken waar je meer over wil weten.\n\n• Durf je eigen wensen en behoeften te benoemen.\n\n• Vraag door wanneer bepaalde informatie niet gedeeld wordt: als je de reden begrijpt, is het makkelijker om de weigering te aanvaarden.\n\n• Sommige zaken hebben tijd nodig: wat vandaag niet is, kan morgen komen.\n\n• Toon respect voor andermans ideeën: uit conflicten groeien oplossingen.")
                    .padding()
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.primary)


                
                Spacer()
            }
        }

    }
}

struct EersteStapGesprekView_Previews: PreviewProvider {
    static var previews: some View {
        EersteStapGesprekView()
    }
}
