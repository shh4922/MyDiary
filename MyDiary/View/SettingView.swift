//
//  SettingView.swift
//  MyDiary
//
//  Created by Hyeonho on 2023/06/01.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    Text("")
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .principal){
                    VStack{
                        HStack{
                            Button {
                                dismiss()
                            } label: {
                                Image(systemName: "arrow.left")
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
        
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
