//
//  MainTabView.swift
//  WhatsappClone
//
//  Created by Chaudhry Umair on 17/02/2025.
//

import SwiftUI

struct MainTabView: View {
    init(){
        makeTabbarOpaque()
    }
    var body: some View {
        // MARK: TabView
        TabView{
            UpdatesTabScreen() 
                .tabItem {
                    Image(systemName: Tab.updates.icon)
                    Text(Tab.updates.title)
                    
                }
            CallsTabScreen()
                .tabItem {
                    Image(systemName: Tab.calls.icon)
                    Text(Tab.calls.title)

                }
            CommunityTabScreen()
                .tabItem {
                    Image(systemName: Tab.communities.icon)
                    Text(Tab.communities.title)

                }
            ChannelsTabScreen()
                .tabItem {
                    Image(systemName: Tab.chats.icon)
                    Text(Tab.chats.title)

                }
            placeholderItemView("Settings")
                .tabItem {
                    Image(systemName: Tab.settings.icon)
                    Text(Tab.settings.title)

                }
        }
    }
    func makeTabbarOpaque() {
        let appearance  = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance

    }
}
extension MainTabView{
    
    private func placeholderItemView(_ title: String) -> some View{
        Text(title)
            .font(.largeTitle)
    }
    
        // MARK: case for enum

    private enum Tab: String {
       
        // MARK: case for tabview
        case updates , calls , communities , chats , settings
        
        // MARK: title for tabview
        fileprivate var title : String{
            return rawValue.capitalized
        }
        
        // MARK: icon for tabview
        fileprivate var icon : String{
            switch self {
            case .updates:
                return "circle.dashed.inset.filled"
            case .calls:
                return "phone.circle.fill"

            case .communities:
                return "person.2.fill"

            case .chats:
                return "ellipsis.message.fill"

            case .settings:
                return "gearshape.fill"
                
            }
        }
    }
}

#Preview {
    MainTabView()
}
