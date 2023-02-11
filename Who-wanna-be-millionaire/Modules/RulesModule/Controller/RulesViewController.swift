import UIKit

class RulesViewController: UIViewController {

    private lazy var backgroundImage: UIImageView = {
        let background = UIImageView()
        let image = UIImage(named: RulesResources.Image.backgroundImageName)
        background.image = image
        background.contentMode = .scaleAspectFill
        return background
    }()
        
    private lazy var upperElementsView = UpperElementsView()
    private lazy var rulesTextView = RulesTextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
        
        upperElementsView.backButton.addTarget(self, action: #selector(backButtonAction), for: .touchUpInside)
    }
    
    @objc func backButtonAction() {
        // Кастомный переход со сдвигом
        let transition = CATransition()
        transition.duration = 0.5
        transition.type = CATransitionType.moveIn
        transition.subtype = CATransitionSubtype.fromLeft
        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        let welcomeViewController = NickNameViewController()
        welcomeViewController.modalPresentationStyle = .fullScreen
        present(welcomeViewController, animated: false, completion: nil)
    }
}

extension RulesViewController {
    
    func setupViews() {
        view.setupView(backgroundImage)
        view.setupView(upperElementsView)
        view.setupView(rulesTextView)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            upperElementsView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            upperElementsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            upperElementsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            upperElementsView.heightAnchor.constraint(equalToConstant: 50),
            
            rulesTextView.topAnchor.constraint(equalTo: upperElementsView.bottomAnchor, constant: 15),
            rulesTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            rulesTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            rulesTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}

