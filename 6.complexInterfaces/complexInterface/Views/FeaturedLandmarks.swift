//

import SwiftUI

struct FeaturedLandmarks: View {
    var featured: [Landmark]
    
    var body: some View {
        NavigationLink(destination: LandmarkDetail(landmark: featured[0])) {
            featured[0].image.resizable()
        }
    }
}

#if DEBUG
struct FeaturedLandmarks_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedLandmarks(featured: [])
    }
}
#endif
