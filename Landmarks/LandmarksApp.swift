//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 林雨腾 on 2022/8/9.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
