import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0

    var body: some View {
        let _ = Self._printChanges()

        VStack {
            Button {
                counter += 1
                let _ = print(counter)
            } label: {
                Text("Go!")
            }

            Text("Hello, world! \(counter)")
                .background(.debug)

            SecondView()
        }
        .padding()
    }
}

struct SecondView: View {
    @State var counter: Int = 0

    var body: some View {
        Image(systemName: "globe")
            .imageScale(.large)
            .foregroundColor(.debug)

        Text("Test counter: \(counter)")
            .background(.debug)

        Button {
            counter += 1
            let _ = print(counter)
        } label: {
            Text("Go!")
        }
    }
}

public extension ShapeStyle where Self == Color {
    static var debug: Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
