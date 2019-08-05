import Combine
import SwiftUI

final class UserData: ObservableObject {
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
