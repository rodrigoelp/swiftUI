//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BadgeView()
            .padding()
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
