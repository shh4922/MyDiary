
import SwiftUI

struct MainView: View {
    @State var isSideMenu = false
    var body: some View {
        ZStack(alignment: .topLeading){
            
            
            NavigationView {
                VStack(alignment: .leading){
                    Text("오늘나는 빵빵이를 만났다. 밥도먹었고 저녁도먹었다 간식역시 먹었다. 정말정말 맛있었다.\n 또 저녁도 같이 먹었다. 너무너무 즐거웠다. 하지만 좀 별로기도 했다 ㅋㅋasdasdasdasda오늘나는 빵빵이를 만났다. 밥도먹었고 저녁도먹었다 간식역시 먹었다. 정말정말 맛있었다.\n 또 저녁도 같이 먹었다. 너무너무 즐거웠다. 하지만 좀 별로기도 했다 ㅋㅋasdasdasdasda오늘나는 빵빵이를 만났다. 밥도먹었고 저녁도먹었다 간식역시 먹었다. 정말정말 맛있었다.\n 또 저녁도 같이 먹었다. 너무너무 즐거웠다. 하지만 좀 별로기도 했다 ㅋㅋasdasdasdasda오늘나는 빵빵이를 만났다. 밥도먹었고 저녁도먹었다 간식역시 먹었다. 정말정말 맛있었다.\n 또 저녁도 같이 먹었다. 너무너무 즐거웠다. 하지만 좀 별로기도 했다 ㅋㅋasdasdasdasda오늘나는 빵빵이를 만났다. 밥도먹었고 저녁도먹었다 간식역시 먹었다. 정말정말 맛있었다.\n 또 저녁도 같이 먹었다. 너무너무 즐거웠다. 하지만 좀 별로기도 했다 ㅋㅋasdasdasdasda")
                    Spacer()
                }
                .padding(.horizontal, 3)
                .toolbar {
                    ToolbarItem(placement: .principal){
                        VStack{
                            HStack{
                                Button {
                                    withAnimation(.easeInOut) {
                                        isSideMenu.toggle()
                                    }
                                    
                                } label: {
                                    Image(systemName: "star")
                                        .foregroundColor(.black)
                                }
                                Spacer()
                                Text("일기장")
                                    .font(.custom("GamjaFlower-Regular", size: 25))
                                Spacer()
                                Button {
                                    print("onClick pencil!!")
                                } label: {
                                    Image(systemName: "pencil")
                                        .foregroundColor(.black)
                                }
                            }
                            Divider()
                        }
                    }
                    
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            
            if isSideMenu {
                ZStack{
                    Color.black.opacity(isSideMenu ? 0.5 : 0)
                }
                .ignoresSafeArea()
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        isSideMenu = false
                    }
                }
            }
            SideMenuView()
                .frame(width: 300)
                .offset(x: isSideMenu ? 0 : -500)
                .background(isSideMenu ? .white : .clear)
            
            
            
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
