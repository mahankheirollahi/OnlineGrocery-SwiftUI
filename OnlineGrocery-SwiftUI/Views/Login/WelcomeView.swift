//
//  WelcomeView.swift
//  OnlineGrocery-SwiftUI
//
//  Created by Mahan Kheirollahi on 10/25/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            Image(.welcomBg)
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            
            VStack{
                Spacer()
                
                Image(.appLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom, 8)
                
                
                Text("Welcome\nto our store")
                    .font(.customfont(.semibold, fontSize: 40))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom,10)
                
                
                Text("Get your groceries in one hour")
                    .font(.customfont(.medium, fontSize: 16))
                    .foregroundStyle(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                
                NavigationLink{
                    SignInView()
                } label:{
                    RoundButton(title: "Get Started"){
                        
                    }
                }
                
                
               
                
                
                
                Spacer()
                    .frame(height: 80)
            }
            .padding(.horizontal, 20)
            
        }
        .ignoresSafeArea()
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

#Preview {
    NavigationView{
        WelcomeView()
    }
   
}
