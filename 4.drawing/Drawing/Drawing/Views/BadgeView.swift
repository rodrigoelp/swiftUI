//

import SwiftUI

struct BadgeView: View {
    
    var symbols: some View {
        ForEach(0 ..< 8) { segment in
            RotatedSymbolView(angle: .init(degrees: (Double(segment) / 8) * 360))
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackgroundView()
            
            GeometryReader { geometry in
                self.symbols
                    .opacity(0.5)
                    .scaleEffect(0.25, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: 0.75 * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

#if DEBUG
struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView()
    }
}
#endif
