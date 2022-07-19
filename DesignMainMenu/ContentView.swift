//
//  ContentView.swift
//  DesignMainMenu
//
//  Created by Надежда on 2022-07-19.
//

import SwiftUI

struct ContentView: View {
    
    @State var index = 0
    @State var show = false
    
    var body: some View {
        ZStack {
            HStack {
                VStack {
                    Image("avatar")
                        .resizable()
                        .clipShape(Circle())
                    Text("Hello,")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    Text("Xcoder")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Button(action: {
                        self.index = 0
                        withAnimation {
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "folder")
                                .foregroundColor(self.index == 0 ? Color("ColorOne") : .white)
                            Text("Catalogue")
                                .foregroundColor(self.index == 0 ? Color("ColorOne") : .white)
                        } .padding(.top, 25)
                    }
                    
                    Button(action: {
                        self.index = 1
                        withAnimation {
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "cart")
                                .foregroundColor(self.index == 1 ? Color("ColorOne") : .white)
                            Text("Cart")
                                .foregroundColor(self.index == 1 ? Color("ColorOne") : .white)
                        } .padding(.vertical, 10)
                            .padding(.horizontal)
                        //  .background(self.index == 1 ? Color("ColorOne") : Color.clear)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        self.index = 2
                        withAnimation {
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "heart")
                                .foregroundColor(self.index == 2 ? Color("ColorOne") : .white)
                            Text("Favourite")
                                .foregroundColor(self.index == 2 ? Color("ColorOne") : .white)
                        } .padding(.vertical, 10)
                            .padding(.horizontal)
                        //   .background(self.index == 2 ? Color("ColorOne") : Color.clear)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        self.index = 3
                        withAnimation {
                            self.show.toggle()
                        }
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "list.bullet.rectangle")
                                .foregroundColor(self.index == 3 ? Color("ColorOne") : .white)
                            Text("My orders")
                                .foregroundColor(self.index == 3 ? Color("ColorOne") : .white)
                        } .padding(.vertical, 10)
                            .padding(.horizontal)
                        //    .background(self.index == 3 ? Color("ColorOne") : Color.clear)
                            .cornerRadius(10)
                    }
                    
                    Divider()
                        .frame(width: 150, height: 1)
                        .background(Color.white)
                        .padding(.vertical, 30)
                    
                    Button(action: {
                        //
                    }) {
                        HStack(spacing: 25) {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(.white)
                            Text("Exit")
                                .foregroundColor(.white)
                        } .padding(.vertical, 10)
                            .padding(.horizontal)
                    }
                    Spacer(minLength: 0)
                }
                Spacer(minLength: 0)
            } .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
            
            VStack(spacing: 0) {
                HStack(spacing: 15) {
                    Button(action: {
                        withAnimation {
                            self.show.toggle()
                        }
                    }) {
                        Image(systemName: self.show ? "xmark" : "line.horizontal.3")
                            .resizable()
                            .frame(width: self.show ? 18 : 22, height: 18)
                        foregroundColor(.black.opacity(0.4))
                    }
                    Text(self.index == 0 ? "Catalogue" : (self.index == 1 ? "Cart" : (self.index == 2 ? "Favourite" : "My Order")))
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.6))
                    Spacer(minLength: 0)
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                
                GeometryReader { _ in
                    VStack {
                        
                    }
                }
            }
        }.background(Color("ColorTwo"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
