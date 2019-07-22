//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("The world on the back of a turtle")
            .font(.title)
            // .color(.green) // depricated in favour of foregroundColor
//            .foregroundColor(.green)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
