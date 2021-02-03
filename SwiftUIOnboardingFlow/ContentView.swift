//
//  ContentView.swift
//  SwiftUIOnboardingFlow
//
//  Created by Ngo Dang tan on 03/02/2021.
//

import SwiftUI
import ConcentricOnboarding

struct ContentView: View {
    var body: some View {
        ConcentricOnboardingView(pages: [
        AnyView(OnboardingPage(title: "Send Messages", message: "Chat with all of your friends and send message in groups", imageName: "message")),
            
            AnyView(OnboardingPage(title: "Notifications", message: "Enaasfanfajnwkfwnajkdneffeafwe", imageName: "bell")),
            
            AnyView(OnboardingPage(title: "Profile", message: "ưefwfwefwfwefwefw", imageName: "person.circle"))
        
        ], bgColors: [.pink, .blue, .orange],
                                 duration: 2.0)
    }
}
struct OnboardingPage: View {
    let title: String
    let message: String
    let imageName: String
    
    var body: some View {
            VStack {
                Spacer()
                Text(title)
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Image(systemName: imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75, height: 75, alignment: .center)
                    .foregroundColor(.white)
                    .padding(100)
                Spacer()
                Text(message)
                    .font(.system(size: 28, weight: .light, design: .default))
                    .padding()
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Spacer()
                Spacer()
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
