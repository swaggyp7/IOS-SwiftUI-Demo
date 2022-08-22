//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by 林雨腾 on 2022/8/10.
//

import SwiftUI

struct LandmarkDetails: View {
    @EnvironmentObject var modelData: ModelData
    
    var landmark: Landmark
    
    var currentLandmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id }) ?? 0
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea()
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    .foregroundColor(.blue)
                    
                    FavoriteButton(isSet: $modelData.landmarks[currentLandmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            Divider()
            
            VStack(alignment: .leading) {
                Text("关于 \(landmark.name)")
                    .font(.title3)
                Text(landmark.description)
                    .font(.body)
                    .foregroundColor(.gray)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
        .ignoresSafeArea()
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    
    static var previews: some View {
        LandmarkDetails(landmark: ModelData().landmarks[0])
            .environmentObject(ModelData())
    }
}
