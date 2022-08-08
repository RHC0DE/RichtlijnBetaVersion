//
//  RichtlijnViewModel.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//

import Foundation

class RichtlijnViewModel: ObservableObject {
    @Published var richtlijnen: [Richtlijn] = richtlijnenList
}
