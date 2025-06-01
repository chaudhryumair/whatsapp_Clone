//
//  RecentCallItemView.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 07/03/2025.
//

import SwiftUI

struct RecentCallItemView: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 45 , height: 45)
            recentViewTextFeilds()
            Spacer()
            Text("Yesterday")
                .foregroundStyle(.gray)
                .font(.system(size: 16))
            Image(systemName: "info.circle ")


        }
    }
    
    private func recentViewTextFeilds()-> some View{
            VStack(alignment: .leading){
            Text("JohnSmith")
            HStack{
                Image(systemName: "phone.arrow.up.right.fill")
                Text("outgoing")
                }
                .font(.system(size: 14))
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    RecentCallItemView()
}
