//
//  SettingsItemView.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 27/06/2025.
//

import SwiftUI

struct SettingsItemView: View {
    let items : SettingsItem
    var body: some View {
        HStack{
            iconImageView()
                .frame(width: 30, height:  30)
                           .padding(3)
                           .foregroundColor(.white)
                           .background(items.backgroundColor)
                           .clipShape(RoundedRectangle(cornerRadius: 5 , style: .continuous))
            Text(items.title)
                .font(.system(size: 18))
            Spacer()
        }
    }
    @ViewBuilder
    func iconImageView() -> some View{
        
        switch items.imageType {
        case .systemImage:
            Image(systemName: items.imageName)
                .bold()
                .font(.callout)
        case .assetImage:
            Image(items.imageName)
                .renderingMode(.template)
                .padding(3)
        }
    }
    }


#Preview {
    SettingsItemView(items: .media)
}
