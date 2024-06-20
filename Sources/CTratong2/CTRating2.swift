import SwiftUI

@available(iOS 17.0, *)
public struct CTRating2: View {
    var title:String
    var color:Color
    var action:() -> Void
  public  init(title: String, color: Color, action: @escaping () -> Void) {
        self.title = title
        self.color = color
        self.action = action
    }
  
    public var body: some View {
        Text(title).bold()
            .foregroundStyle(.white)
            .frame(width: 200, height: 55)
            .background(color,in: .rect(cornerRadius: 20))
            .onTapGesture {
                action()
            }
    }
}
 
