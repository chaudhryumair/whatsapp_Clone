//
//  RecentUpdatesStatusSection.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 20/02/2025.
//

import SwiftUI

struct RecentUpdatesStatusSection: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: UpdatesTabScreen.Constant.imageDimention, height: UpdatesTabScreen.Constant.imageDimention)
            VStack(alignment: .leading){
                Text("Aatir Chaudhry")
                    .font(.callout)
                    .bold()
                Text("1h ago")
                    .foregroundStyle(.gray)
                    .font(.system(size: 15))

            }
            Spacer()
            
        }
    }
}

#Preview {
    RecentUpdatesStatusSection()
}
