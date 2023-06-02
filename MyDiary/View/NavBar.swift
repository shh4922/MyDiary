

import SwiftUI

//struct NavBar: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}

struct NavView<Content>: View where Content: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    let title: String
    let content: Content
    
    var body: some View {
        NavigationView {
            VStack {
                NavBar(backHandler: { self.presentationMode.wrappedValue.dismiss() }, title: title)
                content
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct NavBar: View {
    let backHandler: (() -> Void)
    let title: String
        
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Button(action: { self.backHandler() }) {
                    HStack {
                        Image(systemName: "chevron.left")
                        Text("Back")
                            .font(.system(size: 16))
                    }.foregroundColor(Color.blue)
                }
                Spacer()
                Text(title)
                    .font(.system(size: 16))
                    .lineLimit(1)
                    .foregroundColor(Color.white)
                Spacer()
            }.padding([.leading, .trailing], 16)
            Divider()
            Spacer()
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
        .frame(height: 45)
    }
}
//struct NavBar_Previews: PreviewProvider {
//    static var previews: some View {
//        NavBar()
//    }
//}
