//
//  SideMenuView.swift
//  MyDiary
//
//  Created by Hyeonho on 2023/06/01.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
            VStack(alignment: .leading,spacing: 30){
                Text("오늘의 일기")
                    .font(.custom("GamjaFlower-Regular", size: 40))
                    .padding(.horizontal,10)
                    
                ForEach(SideMenuVM.allCases,id: \.rawValue) { option in
                    
                    if option == .allDialy {
                        NavigationLink {
                            AllDialyView()
                        } label: {
                            SideMenuOptionView(viewModel: option)
                        }
                    }else if option == .setting {
                        NavigationLink {
                            SettingView()
                        } label: {
                            SideMenuOptionView(viewModel: option)
                        }

                    }
                    
                }
                Spacer()
            }
            .cornerRadius(20)
        
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

