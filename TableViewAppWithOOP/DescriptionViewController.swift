
import UIKit

class DescriptionViewController: UIViewController {

    //UIViews definitions
    @IBOutlet weak var photos: UIImageView!
    @IBOutlet weak var photosDescription: UITextView!
    @IBOutlet weak var descLabel: UILabel!
    
    //Other definitions
    var incomingValue = Animal()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        descLabel.text = "\(incomingValue.name!) Description"
        photos.image = incomingValue.image
        photosDescription.text = incomingValue.description
        
    }

}
