import UIKit

class WelcomeViewController: UIViewController {

    private lazy var backgroundImage: UIImageView = {
        let background = UIImageView(frame: .zero)
        let image = UIImage(named: WelcomeConstants.Image.backgroundImageName)
        background.image = image
        background.contentMode = .scaleAspectFill
        return background
    }()
    
    private lazy var logoAndLabelView = LogoAndLabelView()
    private lazy var buttonsView = ButtonsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setConstraints()
        
        buttonsView.rulesButton.addTarget(self, action: #selector(rulesButtonAction), for: .touchUpInside)
    }
    
    @objc func rulesButtonAction() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.moveIn
        transition.subtype = CATransitionSubtype.fromRight
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        let rulesViewController = RulesViewController()
        rulesViewController.modalPresentationStyle = .fullScreen
        present(rulesViewController, animated: false, completion: nil)
    }
}

extension WelcomeViewController {
    
    func setupViews() {
        view.setupView(backgroundImage)
        view.setupView(logoAndLabelView)
        view.setupView(buttonsView)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            logoAndLabelView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
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
