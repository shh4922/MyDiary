//
//  SideMenuOptionView.swift
//  MyDiary
//
//  Created by Hyeonho on 2023/06/01.
//

import SwiftUI

struct SideMenuOptionView: View {
    let viewModel : SideMenuVM
    var body: some View {
        HStack(spacing: 15){
            Image(systemName: viewModel.imageName)
                .font(.system(size: 20))
                .foregroundColor(.gray)
            Text(viewModel.description)
                .font(.custom("GamjaFlower-Regular", size: 20))
            Spacer()
        }
        .frame(height:40)
        .padding(.horizontal, 10)
    }
}
