//
//  HomeView.swift
//  Peter014_1
//
//  Created by DONG SHENG on 2022/7/19.
//

// 參考 Sketch UI設計 做出 AppMusic 在APPSTORE的下載畫面
// 在 Search 內

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        // 也可以包在 HomeView外面 (preview也要加才能預覽)
        NavigationView {
            TabView{
                
                Text("Home")
                    .tabItem {
                        Image(systemName: "doc.text.image")
                        Text("Today")
                    }
                Text("Games")
                    .tabItem {
                        Image(systemName: "gamecontroller")
                        Text("Games")
                    }
                Text("Apps")
                    .tabItem {
                        Image(systemName: "server.rack")
                        Text("Apps")
                    }
                Text("Arcade")
                    .tabItem {
                        Image(systemName: "logo.xbox")
                        Text("Arcade")
                    }
                SearchView
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}


extension HomeView{
    
    private var SearchView: some View{
        
            VStack{
                NavigationLink {
                    AppleMusicView
                } label: {
                    Text("Go MusicView")
                }
            }
            .navigationTitle("Seach")
        
    }
    
    private var AppleMusicView: some View{
        VStack{
            HStack(spacing: 0){
                Image("AppIcon")
                    .resizable()
                    .frame(width: 118, height: 118)
                
                VStack(alignment: .leading){
                    Text("Apple Music")
                        .font(.system(size: 22).bold())
//                        .foregroundColor(.black)
                    Text("70 million songs. All ad-free.")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Text("OPEN")
                                .font(.system(size: 14).bold())
                                .foregroundColor(.white)
                                .padding(.horizontal)
                                .padding(.vertical , 5)
                                .background(.blue)
                                .cornerRadius(14)
                                .frame(width: 72, height: 28)
                                
                        }
                        
                        Spacer()
                        
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.blue)
                            .frame(width: 23, height: 20)
                            .padding(.trailing ,4)
                    }
                }
                .frame(height: 118)
                .padding()
            }
            .padding(15)
            .frame(width: 375, height: 139)
            
            Rectangle()
                .fill(.gray.opacity(0.70))
                .frame(width: 345, height: 1)
                .padding(.vertical ,15)
            
            HStack{
                Image("Age")
                    
                Spacer()
                
                Image("Developer")
                
                Spacer()
                
                Image("Language")
            }
            .frame(width: 291.5, height: 68)
            .padding(.bottom ,15)
            
            Image("ImageSlider")
                .frame(width: 375, height: 155)
                .padding(.bottom ,15)
            
            Image("Compatibility")
                .frame(width: 338, height: 20)
            
            Rectangle()
                .fill(.gray.opacity(0.70))
                .frame(width: 345, height: 1)
                .padding(.vertical ,15)
            
            Image("Description")
                .frame(width: 335, height: 125)
        }
        .padding(.bottom ,83)
    }
}
