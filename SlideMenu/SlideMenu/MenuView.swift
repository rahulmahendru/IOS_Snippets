//
//  MenuView.swift
//  SlideMenu
//
//  Created by Rahul Mahendru on 9/25/20.
//

import SwiftUI

struct MenuView: View {
    
    @State var showMenu: Bool = false
    
    var body: some View {
        
        ZStack {
            
            // Top Bar
            VStack {
                
                HStack {
                    // Hamburger Button
                    // Used text justify symbol from SFSymbols
                    Button(action: {
                        withAnimation {
                            self.showMenu.toggle()
                        }
                    }){
                        Image(systemName: "text.justify")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .padding(.leading)
                    
                    Spacer()
                    
                    // Title
                    Text("Slide Menu")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.trailing, 70)
                    
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width, height: 75)
                .background(Color(red: 200/255, green: 200/255, blue: 255/255))
                .padding(.top, 40)
                .edgesIgnoringSafeArea(.all)
                
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            .padding(.top)
            
            // Side Menu
            HStack {
                VStack(spacing: 15) {
                    
                    List {
                        Text("Profile")
                            .padding(.top, 50)
                        Text("Messages")
                        Text("About Us")
                        Text("Support")
                    }
                    
                    Spacer()
                }
                .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.height+20)
                .background(Color.gray)
                
                Spacer()
            }
            .offset(x: self.showMenu ? 0 : -UIScreen.main.bounds.width)
            .background(Color.black.opacity(self.showMenu ? 0.3 : 0).edgesIgnoringSafeArea(.all).onTapGesture {
                            withAnimation {
                                self.showMenu.toggle()
                            }
            })
        }
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MenuView()
            MenuView()
        }
    }
}
