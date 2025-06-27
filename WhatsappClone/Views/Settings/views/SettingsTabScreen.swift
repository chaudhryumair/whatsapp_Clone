//
//  SettingsTabScreen.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 27/06/2025.
//

import SwiftUI

struct SettingsTabScreen: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            List{
                SettingsHeaderView()
                Section{
                    SettingsItemView(items: .broadCastLists)
                    SettingsItemView(items: .starredMessages)
                    SettingsItemView(items: .linkedDevices)

                }
                Section{
                    SettingsItemView(items: .account)
                    SettingsItemView(items: .privacy)
                    SettingsItemView(items: .chats)
                    SettingsItemView(items: .notifications)
                    SettingsItemView(items: .storage)

                }
                Section{
                    SettingsItemView(items: .help)
                    SettingsItemView(items: .tellFriend)
                }
              
            }
            .navigationTitle("Settings ")
            .searchable(text: $searchText)
        }
    }
}

private struct SettingsHeaderView : View {
    var body: some View {
        Section{
            HStack{
                Circle()
                    .frame(width: 55 , height: 55)
                    .foregroundStyle(Color.blue)
                userInfoTextView()
            }
            SettingsItemView(items: .avatar)
        }
    }
    private func userInfoTextView() -> some View {
        VStack(alignment: .leading ,spacing: 0){
            HStack{
                Text("Atir Chauhdry")
                    .font(.title2 )
                Spacer()
                Image(.qrcode)
                    .renderingMode(.template)
                    .padding(5)
                    .foregroundStyle(.blue)
                    .background(Color(.systemGray5))
                    .clipShape(Circle())
            }
            Text("Hey there! I am using whatsapp")
                .foregroundStyle(.gray)
                .font(.callout)

        }
        .lineLimit(1)
    }
}

#Preview {
    SettingsTabScreen()
}
