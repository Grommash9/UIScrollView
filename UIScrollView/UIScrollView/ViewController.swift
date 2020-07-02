import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

   
    var MyScroolView = UIScrollView()
    var GirlsArray = ["closeup-portrait-laughing-brunette-girl-600w-1082155934","gorgeous-shorthaired-girl-sunglasses-dancing-600w-750408166","headshot-portrait-happy-ginger-girl-600w-623804987","home-beauty-industry-because-coronavirus-600w-1713396724","image-beautiful-stylish-woman-sitting-600w-1119976652","image-confident-caucasian-woman-posing-600w-1723787005","image-happy-young-lady-standing-600w-1036178224","indoor-portrait-amazing-caucasian-female-600w-753516451","photo-embarrassed-ginger-teenager-gazes-600w-1673147272","portrait-cheerful-beautiful-girl-wearing-600w-1038849166","portrait-young-beautiful-cute-cheerful-600w-666258808","young-colombian-girl-over-isolated-600w-1702739497"]
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        createScroll ()
        creatingAllImages()
                    
    }

    func createScroll () {
        let myHightInt = Int(self.view.bounds.width)
        let scrollViewSizeInt = myHightInt * GirlsArray.count
        let scrollViewSizeCGFloat = CGFloat(scrollViewSizeInt)
        MyScroolView = UIScrollView(frame: self.view.bounds)
        MyScroolView.isPagingEnabled = true
        MyScroolView.contentSize = CGSize(width: scrollViewSizeCGFloat, height: self.view.bounds.width)
        MyScroolView.delegate = self
        self.view.addSubview(MyScroolView)
        
    }
        
    func creatingAllImages() {
        for i in 0 ..< GirlsArray.count {
            let number = i
            let picture = UIImage(named: GirlsArray[number])
            let pictureView = UIImageView(image: picture)
            pictureView.contentMode = .scaleAspectFit
            pictureView.frame = CGRect(x: self.view.bounds.width * CGFloat(i), y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
            pictureView.center.y = self.view.center.y
            let pictureName = UILabel(frame: CGRect(x: self.view.bounds.width * CGFloat(i), y: self.view.bounds.width / 10, width: self.view.bounds.width, height: 50))
            pictureName.text = GirlsArray[number]
            pictureName.numberOfLines = 3
            pictureName.textAlignment = .center
            MyScroolView.addSubview(pictureName)
            MyScroolView.addSubview(pictureView)

        }
    }
    
    
    
}


