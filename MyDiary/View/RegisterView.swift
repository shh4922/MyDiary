
import SwiftUI

struct RegisterView: View {
    
    @StateObject var registerVM = RegisterVM()
    
    @Environment(\.dismiss) private var dismiss
    
    @State var isInputClear = true
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(spacing: 20){
                    
                    //MARK: - inputField
                    VStack(alignment: .leading){
                        Text("이메일")
                            .font(.caption)
                        TextField("사용하실 이메일을 입력해주세요", text: $registerVM.user_email)
                            .padding()
                            .background(Color(uiColor: .systemGray5))
                            .cornerRadius(10)
                    }
                    VStack(alignment: .leading){
                        Text("비밀번호")
                            .font(.caption)
                        SecureField("비밀번호 7글자 이상", text: $registerVM.user_password)
                            .padding()
                            .background(Color(uiColor: .systemGray5))
                            .cornerRadius(10)
                    }
                    VStack(alignment: .leading){
                        Text("비밀번호 확인")
                            .font(.caption)
                        SecureField("비밀번호 확인", text: $registerVM.user_password2)
                            .padding()
                            .background(Color(uiColor: .systemGray5))
                            .cornerRadius(10)
                    }
                    

                    //MARK: - register
                    Button {
                        registerVM.Register()
                    } label: {
                        Text("가입하기")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal,100)
                    .padding(.vertical,10)
                    .background(registerVM.checkPassword() ? .gray : Color(uiColor: .systemOrange))
                    .cornerRadius(10)
                    .padding(.top,30)
                    .disabled(registerVM.checkPassword())
                }
                .padding(.horizontal,20)
                .padding(.top,30)
            }
            .onReceive(registerVM.isSuccessRegister){ result in
                if result {
                    print("가입성공")
                }else{
                    print("fail")
                }
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

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
