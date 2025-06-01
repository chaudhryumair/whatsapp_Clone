//
//  CreseteCallLinkSection.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 21/02/2025.
//

import SwiftUI

struct CreateCallLinkSection: View {
    var body: some View {
        HStack {
            Image(systemName: "link")
                .padding(8)
                .background(Color(.systemGray6))
            .clipShape(Circle())
            VStack(alignment: .leading){
                Text("Create call link")
                    .foregroundStyle(.blue)
                Text("Share a link for your whatsapp call")
                    .foregroundStyle(.gray)
                    .font(.caption)


            }
        }
    }
}

#Preview {
    CreateCallLinkSection()
}
