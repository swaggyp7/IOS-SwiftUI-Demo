//
//  ContentView.swift
//  Landmarks
//
//  Created by 林雨腾 on 2022/8/9.
//  Tutorial link: https://developer.apple.com/tutorials/swiftui/creating-and-combining-views
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
