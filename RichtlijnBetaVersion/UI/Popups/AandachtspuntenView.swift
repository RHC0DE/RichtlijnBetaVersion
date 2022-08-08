//
//  aandachtspuntenView.swift
//  RichtlijnBetaVersion
//
//  Created by Guest User on 07/08/2022.
//

import SwiftUI

struct AandachtspuntenView: View {
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
                
                Text("Aandachtspunten: ")
                    .font(.system(size: 20, weight: .bold))
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)

                Text("• Als ouder bent u verantwoordelijk voor de opvoeding en ontwikkeling van uw kind.\n\n• Denk actief mee en vraag de hulpverlener dat hij u steeds actief blijft betrekken.\n\n• Vertel de hulpverlener welke problemen u ervaart, wat u graag zou willen veranderen en welke ideeën u heeft over hoe die verandering er kan komen.\n\n• Uw hulpverlener onderzoekt met u wat uw mogelijkheden zijn: wat wilt en kunt u doen om uw zoon of dochter verder te helpen?\n\n • Sta open voor adviezen en probeer daar zoveel mogelijk mee te doen.\n\n• Laat uw mening horen. Geef het bijvoorbeeld op tijd aan als een advies niet bij u of uw kind past, en kijk samen met uw hulpverlener wat u daaraan kunt doen.\n\n• Neem zorgen die anderen over uw kind hebben serieus en geef daar uw mening en ideeën over.")
                    .padding()
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.primary)
                
                Spacer()
            }
        }

    }
}

struct AandachtspuntenView_Previews: PreviewProvider {
    static var previews: some View {
        AandachtspuntenView()
    }
}
