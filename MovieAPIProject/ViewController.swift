import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ghostDateOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        getMovie()
    }
    // key: f36e3324
    func getMovie(){
        let session = URLSession.shared
        let movieURL = URL(string: "http://www.omdbapi.com/?i=tt3896198&apikey=f36e3324")!
        let dataTask = session.dataTask(with: movieURL) { data, response, error in
            if let e = error{
                print("Error! \(e)")
            }
            else{
                if let d = data{
                    
                }
            }
        }
        
    }
}
