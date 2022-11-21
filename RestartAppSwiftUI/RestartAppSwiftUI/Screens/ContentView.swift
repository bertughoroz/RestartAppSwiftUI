//
//  ContentView.swift
//  RestartAppSwiftUI
//
//  Created by Bertuğ Horoz on 19.11.2022.
//

import SwiftUI


struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        
        ZStack{
            if isOnboardingViewActive {
                HomeView()
            } else {
                OnboardingView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
