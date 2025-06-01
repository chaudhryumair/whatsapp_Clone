//
//  ChannelItemView.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 13/04/2025.
//

import SwiftUI

struct ChannelItemView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 10){
            Circle()
                .frame(width: 60 , height: 60)
            VStack(alignment:.leading , spacing: 3){
                titletextView()
                lastMessagePreview()
            }
        }
    }
    private func titletextView() -> some View{
        HStack{
            Text("QAuser12")
                .lineLimit(1)
                .bold()
            Spacer()
            Text("5:50 pm")
                .foregroundStyle(.gray)
                .font(.system(size: 15))
        }
    }
    private func lastMessagePreview() -> some View{
        Text("Hey Welcome")
            .font(.system(size: 16))
            .lineLimit(2)
            .foregroundStyle(.gray)

    }
}

#Preview {
    ChannelItemView()
}
