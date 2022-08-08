//
//  SplashScreenView.swift
//  RichtlijnBetaVersion
//
//  Created by RHC0DE
//
import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false // A boolean to check if the splashscreen is active
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State private var duration = 1.2
    
    var body: some View {
        
        if isActive {
        
            WelcomeView()
            
        } else {
            
            VStack{
                
                VStack {
                    Image("Splashscreen_Logo")
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: duration)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .accentColor(Color.black)
                .background(Color(Colors.darkBlue)).ignoresSafeArea(.all, edges: .all)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                        self.isActive = true
                    }
                }
            }
            
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
