import UIKit
import FacebookLogin
import FBSDKCoreKit
import FBSDKLoginKit
import StoreKit
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let loginButton = FBLoginButton()
        loginButton.permissions = ["public_profile", "email"]
        loginButton.center = view.center
        
        view.addSubview(loginButton)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Do any additional setup after loading the view, typically from a nib.
        let currentCount = UserDefaults.standard.integer(forKey: "launchCount")
        // increment received number by one
        UserDefaults.standard.set(currentCount+1, forKey:"launchCount")
        print("CURRENT COUNT \(currentCount)")
        
        //WELCOME ALERT THAT TELLS A JOKE
        let alert = UIAlertController(title: "LAUNCH NUMBER \(currentCount)", message: "What’s red and moves up and down? A tomato in an elevator", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: {action in print("It said ok")})
        let cancelAction = UIAlertAction(title: "Don't show again", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        if currentCount == 0 {
            present(alert, animated: true, completion: nil)
        }
        
        //SECOND ALERT THAT ASKS TO GRADE THE APP
        let alert2 = UIAlertController(title: "LAUNCH NUMBER \(currentCount)", message: "Do you really like this app?", preferredStyle: .alert)
        let okAction2 = UIAlertAction(title: "Yes!", style: UIAlertAction.Style.default, handler: {action in self.ShowAlertToGrade()})
        
        let cancelAction2 = UIAlertAction(title: "Not really", style: .cancel, handler: nil)
        alert2.addAction(okAction2)
        alert2.addAction(cancelAction2)
       
        
        
        print("There \(currentCount % 5)")
        if currentCount > 10 && currentCount % 5 == 0 {//After ten launches, every fifth launch show ...
            print("There it goes the review")
             present(alert2, animated: true, completion: nil)
        }
    }
    
    func ShowAlertToGrade() -> Void {
        if #available( iOS 10.3,*){
            SKStoreReviewController.requestReview()
            print("Review showed")
        }else{
            print("Review not showed")
        }
    }
    
}
