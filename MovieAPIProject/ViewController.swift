import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ghostDateOutlet: UILabel!
    var movieName = "Ghost"
    override func viewDidLoad() {
        super.viewDidLoad()
        getMovie()
    }
    // key: f36e3324
    func getMovie(){
        let session = URLSession.shared
        let movieURL = URL(string: "http://www.omdbapi.com/?t=\(movieName)&apikey=f36e3324")!
        let dataTask = session.dataTask(with: movieURL) { data, response, error in
            if let e = error{
                print("Error! \(e)")
            }
            else{
                if let d = data{
                    if let jsonObj = try? JSONSerialization.jsonObject(with: d, options: .fragmentsAllowed) as? NSDictionary{
                        print(jsonObj)
                        if let year = jsonObj.value(forKey: "Year") as? String{
                            print("This worked")
                                print(year)
                            
                                DispatchQueue.main.async {
                                    self.ghostDateOutlet.text = "Year: \(year)"
                                }
                                
                            }

                        }
                    }
                    else{
                        print("Could't get data")
                    }
                }
            }
        dataTask.resume()
        
        
        }
        
        
    }

