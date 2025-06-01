//
//  ChannelsTabScreen.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 13/04/2025.
//

import SwiftUI

struct ChannelsTabScreen: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
 
            List{
                archived()
                ForEach(0..<12){ _ in
                   
                    ChannelItemView()
                        .frame(height: 55)
                }
                inboxFooterView()
                    .listRowSeparator(.hidden)
               
                
            }
            .listStyle(.plain)
            .navigationTitle("Chats ")
            .searchable(text: $searchText )
            
            .toolbar{
                leadingnavItem()
                trailingnavItem()
            }
            
        }
    }
    private func inboxFooterView() -> some View{
        HStack{
            Image(systemName: "lock.fill")
            (
                Text("Your personal message are ")
                +
                Text("end-to-end encrypted ")
                    .foregroundColor(.blue)
                    .bold()
            )
        }
        .foregroundStyle(.gray)
        .font(.caption)
        .padding(.horizontal)
    }
    
}
extension ChannelsTabScreen{
    @ToolbarContentBuilder
    private func leadingnavItem() -> some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Menu{
                Button{
                    print("Select chat")
                } label: {
                    Label("Select Chats", systemImage: "checkmark.circle")
                }
            } label: {
                Image(systemName: "ellipsis.circle")
            }
        }
    }
    
    @ToolbarContentBuilder
    private func trailingnavItem() -> some ToolbarContent {
        ToolbarItemGroup(placement: .topBarTrailing) {
            aiBUtton()
            camerButton()
            newChatButton()
           
        }
    }
    
    private func aiBUtton() -> some View {
        Button{
            print("AI Button")
        } label: {
            Image(.circle)
        }
    }
    
    private func newChatButton() -> some View {
        Button{
            print("New chat")
        } label: {
            Image(.plus)
        }
    }
    
    private func camerButton() -> some View {
        Button{
            print("Camera")
        } label: {
            Image(systemName: "camera")
        }
    }
    
    private func archived () -> some View {
        Button{
            print("Camera")
        } label: {
            Label("Archieved", systemImage: "archivebox.fill")
                .bold().padding()
                .foregroundStyle(.gray)
        }
    }
    
}

#Preview {
    ChannelsTabScreen()
}
