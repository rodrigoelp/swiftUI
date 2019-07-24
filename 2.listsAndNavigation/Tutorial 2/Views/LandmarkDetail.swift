/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct LandmarkDetail: View {
    let landmark: Landmark
    
    var body: some View {
        VStack() {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            CircleImage(image: landmark.image(forSize: 180))
                .frame(width: 180, height: 180)
                .offset(y: -90)
                .padding(.bottom, -90)
            
            HeaderView(title: landmark.name, location: landmark.park, region: landmark.state)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
#endif
