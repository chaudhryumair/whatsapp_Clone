//
//  StausChannelListView.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 20/02/2025.
//

import SwiftUI

struct StausChannelListView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Stay updated on topics that matter to you. Find channels to follow below.")
                .foregroundStyle(.gray)
                .font(.callout)
                .padding(.horizontal)
        }
        ScrollView(.horizontal , showsIndicators: false){
            HStack{
                ForEach(0..<5){ _ in
                    ChanneltemView()
                }
            }
        }
        HStack {
            Button("Explore More"){}
            .tint(.blue)
            .bold()
            .buttonStyle(.borderedProminent)
            .clipShape(Capsule())
            .padding(.vertical)
        }
    }
}

struct ChanneltemView: View {
    var body: some View {
        VStack(alignment: .leading){
            Circle()
                .frame(width: UpdatesTabScreen.Constant.imageDimention, height: UpdatesTabScreen.Constant.imageDimention)
            Text("Baby Book")
            Button{
                
            }label: {
                Text("Follow")
                    .bold()
                    .padding(5)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue.opacity(0.2))
                    .clipShape(Capsule())
            }
        }
        .padding(.horizontal)
        .padding(.vertical)
        .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4) , lineWidth:  1)
        )

       
    }
}
#Preview {
    StausChannelListView()
   // ChanneltemView()
}
