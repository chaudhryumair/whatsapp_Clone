//
//  UpdatesTabScreen.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 17/02/2025.
//

import SwiftUI

struct UpdatesTabScreen: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            List{
                StatusSectionHeader()
                    .listRowBackground(Color.clear)
                StatusSection()
                Section{
                    RecentUpdatesStatusSection()
                } header: {
                    Text("Recent Updates")
                }
                Section{
                    StausChannelListView()
                } header: {
                    ChannelSectionHeader()
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Updates")
            .searchable(text: $searchText)
        }
    }
}


#Preview {
    UpdatesTabScreen()
}
