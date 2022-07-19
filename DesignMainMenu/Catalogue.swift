//
//  Catalogue.swift
//  DesignMainMenu
//
//  Created by Надежда on 2022-07-19.
//

import SwiftUI

struct Catalogue: View {
    var body: some View {
        VStack {
            Image(systemName: "folder")
                .foregroundColor( Color("ColorOne"))
                .font(.largeTitle)
        }
    }
}

struct Cart: View {
    var body: some View {
        VStack {
            Image(systemName: "cart")
                .foregroundColor( Color("ColorOne"))
                .font(.largeTitle)
        }
    }
}

struct Orders: View {
    var body: some View {
        VStack {
            Image(systemName: "list.bullet.rectangle")
                .foregroundColor( Color("ColorOne"))
                .font(.largeTitle)
        }
    }
}

struct Fav: View {
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .foregroundColor( Color("ColorOne"))
                .font(.largeTitle)
        }
    }
}
