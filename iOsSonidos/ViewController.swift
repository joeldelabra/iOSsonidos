import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    var player : AVAudioPlayer?
    var player2: AVAudioPlayer?
    
    var reproduccion = false
    
    @IBAction func DoTapReproducir(_ sender: Any) {
        if reproduccion{
            let path = Bundle.main.path(forResource: "Chavez_03.wav", ofType: nil)
            let urlFondo = URL(fileURLWithPath: path!)
            do{
               player2 = try AVAudioPlayer(contentsOf: urlFondo)
            } catch {
                
            }
        } else {
            reproduccion = true
        }
        
        if player != nil {
            player?.play()
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "RUIZ_02.wav", ofType: nil)
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

