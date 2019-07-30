//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var userData: UserData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(landmark.name)
                    .font(.title)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                Button(action: {
                    self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                }) {
                    if self.userData.landmarks[self.landmarkIndex].isFavorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    } else {
                        Image(systemName: "star")
                            .foregroundColor(.gray)
                    }
                }
            }
            HStack() {
                Text(landmark.park)
                    .font(.subheadline)
                Spacer()
                Text(landmark.state)
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

#if DEBUG
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(landmark: landmarkData[0])
            .environmentObject(UserData())
    }
}
#endif
