//
//  LoginView.swift
//  MyDiary
//
//  Created by Hyeonho on 2023/05/31.
//

import SwiftUI

struct LoginView: View {
    @State var userid = ""
    @State var password = ""
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack{
            ScrollView(showsIndicators: false){
                VStack(alignment: .center, spacing: 30){
                    
                    //inputField
                    VStack(spacing: 15){
                        VStack(alignment: .leading){
                            Text("이메일")
                                .font(.subheadline)
                            TextField("이메일을 입력하세요.", text: $userid)
                                .padding()
                                .background(Color(uiColor: .systemGray5))
                                .cornerRadius(10)
                        }
                        
                        VStack(alignment: .leading){
                            Text("비밀번호")
                                .font(.subheadline)
                            SecureField("비밀번호를 입력하세요.", text: $password)
                                .padding()
                                .background(Color(uiColor: .systemGray5))
                                .cornerRadius(10)
                        }
                        
                    }
                    .padding(.top,40)
                    .padding(.horizontal,10)
                    
                    //button
                    VStack(spacing: 20){
                        Button {
                            print("onClick 로그인 !!")
                        } label: {
                            Text("로그인하기")
                                .font(.system(size: 18))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal,100)
                        .padding(.vertical,10)
                        .background(Color(uiColor: .systemBlue))
                        .cornerRadius(10)
                        
                        Button {
                            print("onClick 비회원 !!")
                        } label: {
                            Text("비회원으로 시작하기!")
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                        
                    }
                    .padding(.top,30)

                }
            }
            .onTapGesture {
                endEditing()
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
                            Text("로그인")
                                .font(.custom("GamjaFlower-Regular", size: 25))
                            Spacer()
                            Button {
                                dismiss()
                            } label: {
                                Image(systemName: "arrow.left")
                                    .foregroundColor(.black)
                            }
                            .opacity(0)
                        }
                        Divider()
                    }
                }
                
            }
            .navigationBarBackButtonHidden(true)
        }
        
        
           
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
