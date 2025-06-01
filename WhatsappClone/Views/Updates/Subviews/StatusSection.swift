//
//  StatusSection.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 20/02/2025.
//

import SwiftUI

struct StatusSection: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: UpdatesTabScreen.Constant.imageDimention, height: UpdatesTabScreen.Constant.imageDimention)
            VStack(alignment: .leading){
                Text("My Status")
                    .font(.callout)
                    .bold()
                Text("Add to my status")
                    .foregroundStyle(.gray)
                    .font(.system(size: 15))

            }
            Spacer()
            cameraButton()
            pencilButton()
        }
        
    }
    
    private func cameraButton() -> some View{
        Button {
            
        } label: {
            Image(systemName: "camera.fill")
                .padding(10)
                .background(Color(.systemGray5))
                .clipShape(Circle())
                .bold()
        }
    }
    private func pencilButton() -> some View{
        Button {
            
        } label: {
            Image(systemName: "pencil")
                .padding(10)
                .background(Color(.systemGray5))
                .clipShape(Circle())
                .bold()
        }
    }
}

#Preview {
    StatusSection()
}
