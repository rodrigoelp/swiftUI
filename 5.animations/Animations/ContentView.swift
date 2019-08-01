//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HikeView(hike: hikeData[0])
//        Group {
//            ForEach(hikeData) { hike in
//                HikeView(hike: hike)
//            }
//        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
