/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing the details for a landmark.
*/

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack() {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .frame(width: 180, height: 180)
                .offset(y: -90)
                .padding(.bottom, -90)
            
            HeaderView(title: "The world on the back of a turtle", location: "Joshua Tree National Park", region: "California")
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
#endif
