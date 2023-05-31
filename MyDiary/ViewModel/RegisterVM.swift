import Foundation
import Firebase
import FirebaseAnalytics
import Combine

class RegisterVM : ObservableObject {
    
    @Published var user_email : String = ""
    @Published var user_password : String = ""
    @Published var user_password2 : String = ""
    
    var isSuccessRegister = PassthroughSubject<Bool,Never>()
    
    
    func Register(){
        Auth.auth().createUser(withEmail: user_email, password: user_password){ result, error in
            if let _error = error {
                print(_error)
            }else {
                self.CreateUserDB()
                self.isSuccessRegister.send(true)
            }
        }
    }
    
    func CreateUserDB(){
        let ref = Database.database().reference().child("Users").childByAutoId()
        guard let key = ref.key else { return }
        ref.setValue([
            "key" : "\(key)"
        ])
    }
    
    func checkPassword() -> Bool{
        if user_password.count > 6 && user_password == user_password2 {
            return false
        }
        return true
    }
}
