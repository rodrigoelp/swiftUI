//

import SwiftUI

struct HeaderView: View {
    let title: String
    let location: String
    let region: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
            HStack() {
                Text(location)
                    .font(.subheadline)
                Spacer()
                Text(region)
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#if DEBUG
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Something something dark side", location: "Upper deck", region: "Death Star")
    }
}
#endif
