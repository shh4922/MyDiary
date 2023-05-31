
import SwiftUI

struct IndexView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Text("나만의")
                    .font(.custom("GamjaFlower-Regular", size: 60))
                Text("일기")
                    .font(.custom("GamjaFlower-Regular", size: 60))
                Spacer()
                
                NavigationLink {
                    LoginView()
                } label: {
                    Text("로그인하러 가기!")
                        .foregroundColor(.blue)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                }
                
                NavigationLink {
                    RegisterView()
                } label: {
                    Text("회원가입하러 가기!")
                        .foregroundColor(.orange)
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                }
                Spacer()
            }
        }
    }
}

struct IndexView_Previews: PreviewProvider {
    static var previews: some View {
        IndexView()
    }
}
