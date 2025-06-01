//
//  CommunityTabScreen.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 08/03/2025.
//

import SwiftUI

struct CommunityTabScreen: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading, spacing:  10){
                    Image(.communities)
                    Group{
                        Text("Stay connected with a community")
                            .font(.title2)
                        Text("Communities bring members together in a tipic-based groups. Any community you`re added to will appeaar here")
                            .foregroundStyle(.gray)
                        
                    }
                    .padding(.horizontal, 5)
                    Button("See example communities >" ){}
                        .frame(maxWidth: .infinity , alignment: .center)
                    CreateNewCommunityButton()
                }
                .padding(.horizontal)
                .navigationTitle("Communities")
                
            }
        }
    }
    private func CreateNewCommunityButton() -> some View{ 
        Button {
            
        } label: {
            Label("New Community", systemImage: "plus")
                .bold()
                .frame(maxWidth: .infinity , alignment: .center)
                .foregroundStyle(.white)
                .padding(10)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10 , style: .continuous))
                .padding()
        }
    }


}

#Preview {
    CommunityTabScreen()
}
