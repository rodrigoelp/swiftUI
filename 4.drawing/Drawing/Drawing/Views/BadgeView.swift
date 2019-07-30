//

import SwiftUI

struct BadgeView: View {
    var body: some View {
        ZStack {
            BadgeBackgroundView()
            SymbolView()
        }
    }
}

#if DEBUG
struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
#endif
