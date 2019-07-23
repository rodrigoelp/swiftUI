//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                CircleImage()
                Text("The world on the back of a turtle")
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
            }
            HStack() {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
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
