//
//  CallsTabScreen.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 20/02/2025.
//

import SwiftUI

struct CallsTabScreen: View {
    @State private var searchText = ""
    @State private var callHistory = Callhistory.all

    var body: some View {
        NavigationStack{
            List{
                Section{
                    CreateCallLinkSection()
                }
                Section{
                    ForEach(0..<5){ _ in
                        RecentCallItemView()
                    }
                } header: {
                    Text("Recent")
                        .bold()
                        .textCase(nil)
                        .font(.headline)
                        .foregroundStyle(.whatsAppBlack)
                }
            }
            .navigationTitle("Updates")
            .searchable(text: $searchText)
            .toolbar{
                leadingnavItem()
                principalnavItem()
                trailingnavItem()
            }
        }
        
        
       
    }
}

extension CallsTabScreen{
    @ToolbarContentBuilder
    private func leadingnavItem() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Edit")
        }
    }
    
    @ToolbarContentBuilder
    private func trailingnavItem() -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Image(systemName: "phone.arrow.up.right")
        }
    }
    @ToolbarContentBuilder
    private func principalnavItem() -> some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Picker("" , selection: $callHistory){
                ForEach(Callhistory.allCases){ item in
                    Text(item.rawValue.capitalized)
                        .tag(item)
                    
                }
            }
            .pickerStyle(.segmented)
            .frame(width: 150)
        }
    }
        private enum Callhistory: String , CaseIterable , Identifiable{
            case all , missed
            var id: String {
                return rawValue
            }
        }
        
    
}
#Preview {
    CallsTabScreen()
}
