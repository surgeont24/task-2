import SwiftUI


#Preview {
    ContentView()
}


struct ContentView: View {
    
    @State var width: CGFloat = 100
    
    var word1: AttributedString {
        var result = AttributedString("марафон ")
        result.font = Font.system(size: 20)
        result.foregroundColor = .gray
        return result
    }
    
    var word3: AttributedString {
        var result = AttributedString("по SwiftUI ")
        result.font = Font.system(size: 26)
        result.foregroundColor = .black
        return result
    }
    
    var body: some View {
        
        
        VStack(spacing: 20) {
            
            VStack(alignment: .leading) {
                Text(word1) + Text(word3) + Text("«Отцовский пинок»")
                    .font(.system(size: 30,
                                  weight: .bold))
                    .foregroundStyle(.blue)
            }
            
                        
            }
            .frame(width: width, height: 250)
            .border(.red)

            Slider(value: $width, in: 100...300)
                .padding()
        }
        
}

