//
//  SamenwerkingsRelatieView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE on 05/08/2022.
//

import SwiftUI

struct SamenwerkingsRelatieView: View {
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
                
                Text("Tips om een samenwerkingsrelatie op te bouwen met ouders en jeugdigen: ")
                    .font(.system(size: 20, weight: .bold))
                .multilineTextAlignment(.center)
                .foregroundColor(.primary)


                
                Text("• Wees nieuwsgierig naar het verhaal van ouders en jeugdige.\n\n• Verplaats je in de beleving van de ander.\n\n• Geef complimenten.\n\n• Wees transparant.\n\n• Kom je afspraken na.\n\n• Voer overleg met anderen professionals pas uit na toestemming van ouders en jeugdige.\n\n• Koppel aan hen terug wat je hebt gehoord en check bij hen of deze informatie (nog) klopt en relevant is.\n\n• Zorg dat je met ouders en jeugdige tot een gedeelde visie komt op wat de problematiek is in het gezin.\n\n• Ga ervan uit dat ouders en jeugdige altijd wel iets willen en zoek naar wat hen motiveert (wat vinden zij belangrijk in hun leven?).\n\n• Leg ouders en jeugdigen keuzenmogelijkheden voor en overleg met hen wat hun wensen en ideeën zijn.\n\n• Vraag ouders en jeugdigen om feedback en sta open voor kritiek en suggesties: hoe ervaren zij de samenwerkingsrelatie? Ervaren zij vooruitgang door de hulp? Lopen ze ergens tegenaan?")
                    .padding()
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.primary)


                
                Spacer()
            }
        }

    }
}

struct SamenwerkingsRelatieView_Previews: PreviewProvider {
    static var previews: some View {
        SamenwerkingsRelatieView()
    }
}
