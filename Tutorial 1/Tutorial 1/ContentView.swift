//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        HeaderView(title: "The world on the back of a turtle", location: "Joshua Tree National Park", region: "California")
        MapView()
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
