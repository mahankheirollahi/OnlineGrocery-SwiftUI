//
//  RoundButton.swift
//  OnlineGrocery-SwiftUI
//
//  Created by Mahan Kheirollahi on 10/25/24.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Title"
    var didTap: (()->())?
    var body: some View {
        Button{
            didTap?()
        } label: {
            Text(title)
                .font(.customfont(.semibold, fontSize: 18))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                
            
        }
        .frame(minWidth:0, idealWidth: .infinity, maxWidth: 60, minHeight:60)
        .background(Color.primaryApp)
        .cornerRadius(20)
    }
}

#Preview {
    RoundButton()
        .padding(20)
}
