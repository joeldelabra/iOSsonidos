import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBAction func DoTapReproducir(_ sender: Any) {
        if player != nil {
            player?.play()
        }
        
    }
    var player : AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "AUDIO.wav", ofType: nil)
        let url = URL(fileURLWithPath: path!)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
        } catch {
            
        }
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

