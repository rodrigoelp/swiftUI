import SwiftUI
import Combine

final class UserData: BindableObject {
    let willChange = PassthroughSubject<Void, Never>()
    
    var showFavoritesOnly = false {
            willSet {
                willChange.send()
            }
        }

        var landmarks = landmarkData {
            willSet {
                willChange.send()
            }
        }
}
