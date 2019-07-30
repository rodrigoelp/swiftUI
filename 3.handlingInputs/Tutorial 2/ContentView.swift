//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        LandmarkList()
     //       .environmentObject(userData) // turns out setting the environment object is a global thing and every new view will inherit it immediately. At least for now.
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
