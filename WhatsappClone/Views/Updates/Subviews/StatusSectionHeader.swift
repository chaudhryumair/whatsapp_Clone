//
//  StatusSectionHeader.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 20/02/2025.
//

import SwiftUI

 struct StatusSectionHeader: View{
   var body: some View {
       HStack(alignment: .top){
           Image(systemName: "circle.dashed")
               .foregroundStyle(.blue)
                   .imageScale(.large)
           (
               Text("Use status to share photos, text and videos that disappear in 24 hours.")
               + 
               Text("")
               +
               Text("Status Privacy")
                .foregroundColor(.blue)
                   .bold()
               
           )
           Image(systemName: "xmark")
               .foregroundStyle(.gray)
       }
       .padding()
       .background(.whatsAppWhite)
       .clipShape(RoundedRectangle(cornerRadius: 15 ,style: .continuous ))
   }
}

#Preview {
    UpdatesTabScreen()
}
