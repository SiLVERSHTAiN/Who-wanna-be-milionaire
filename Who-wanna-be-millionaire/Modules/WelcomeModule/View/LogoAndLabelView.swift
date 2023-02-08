import UIKit

class LogoAndLabelView: UIView {
    
    private lazy var logoImage: UIImageView = {
        let logoImage = UIImageView()
        let image = UIImage(named: WelcomeConstants.Image.welcomeLogoName)
        logoImage.image = image
        return logoImage
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = WelcomeConstants.Text.welcomLabelText
        label.font = WelcomeConstants.Fonts.setFont(name: .textAvenirFont, size: 24)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private lazy var gameNameLabel: UILabel = {
        let label = UILabel()
        label.text = WelcomeConstants.Text.gameNameLabelText
        label.font = WelcomeConstants.Fonts.setFont(name: .textAvenirFontBold, size: 36)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
 
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LogoAndLabelView {
    
    func setupViews() {
        setupView(logoImage)
        setupView(welcomeLabel)
        setupView(gameNameLabel)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: topAnchor),
            logoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImage.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6),
            logoImage.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.6),
            
            welcomeLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 17),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            welcomeLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            welcomeLabel.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 0.1),
            
            gameNameLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 9),
            gameNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            gameNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
}
