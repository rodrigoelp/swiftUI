//

import SwiftUI

struct ContentView: View {
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
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
