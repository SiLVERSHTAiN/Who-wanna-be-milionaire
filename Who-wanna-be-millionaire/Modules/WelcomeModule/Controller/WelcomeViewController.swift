import UIKit

class WelcomeViewController: UIViewController {

    private lazy var backgroundImage: UIImageView = {
        let background = UIImageView(frame: .zero)
        let image = UIImage(named: WelcomeConstants.backgroundImageName)
        background.image = image
        background.contentMode = .scaleAspectFill
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()
    
    private lazy var logoAndLabelView = LogoAndLabelView()
    private lazy var buttonsView = ButtonsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setConstraints()
    }
    
    func setupViews() {
        
        view.addSubview(backgroundImage)
        
        view.addSubview(logoAndLabelView)
        logoAndLabelView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(buttonsView)
        buttonsView.translatesAutoresizingMaskIntoConstraints = false
        
    }
}

extension WelcomeViewController {
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            logoAndLabelView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            logoAndLabelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            logoAndLabelView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            logoAndLabelView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.46),
            
            buttonsView.topAnchor.constraint(equalTo: logoAndLabelView.bottomAnchor, constant: 107),
            buttonsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            buttonsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            buttonsView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.27)
        ])
    }
}
