//

import SwiftUI

struct RotatedSymbolView: View {
    let angle: Angle
    
    var body: some View {
        SymbolView()
            .padding(-40)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#if DEBUG
struct RotatedSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        RotatedSymbolView(angle: .init(degrees: 45))
    }
}
#endif
