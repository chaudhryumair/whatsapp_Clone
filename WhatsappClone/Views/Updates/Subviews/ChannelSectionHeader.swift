//
//  ChannelSectionHeader.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 20/02/2025.
//

import SwiftUI

struct ChannelSectionHeader: View {
    var body: some View {
        HStack{
            Text("Channels")
                .bold()
                .font(.title3)
                .textCase(nil)
                .foregroundStyle(.whatsAppBlack)
            
            Spacer()
            Button{}label: {
                    Image(systemName: "plus")
                    .padding(7)
                    .background(Color(.systemGray5))
                    .clipShape(Circle())
            }
        }
    }
}

#Preview {
    ChannelSectionHeader()
}
