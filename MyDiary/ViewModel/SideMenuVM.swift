import Foundation

enum SideMenuVM : Int, CaseIterable {
    case allDialy
//    case picture
    case setting
    
    var description : String{
        switch self{
        case .allDialy : return "일기 몰아보기"
//        case .picture : return "사진"
        case .setting : return "설정"
        }
    }
    
    var imageName: String{
        switch self{
        case .allDialy : return "menucard"
//        case .picture : return "camera"
        case .setting : return "gearshape"
        }
    }
}
