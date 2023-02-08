import UIKit

final class UpperElementsView: UIView {
    
    lazy var backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(RulesResources.Text.backButtonTitleText, for: .normal)
        button.titleLabel?.font = RulesResources.Fonts.setFont(name: .textAvenirFont, size: 20)
        button.tintColor = UIColor(red: 83/255, green: 225/250, blue: 165/255, alpha: 1.0)
        return button
    }()
    
    private lazy var rulesLabel: UILabel = {
        let label = UILabel()
        label.text = RulesResources.Text.rulesLabelText
        label.font = RulesResources.Fonts.setFont(name: .textAvenirFontBold, size: 36)
        label.textColor = RulesResources.TextColor.greenColor
        return label
    }()
    
    private lazy var logoImage: UIImageView = {
        let logoImage = UIImageView()
        let image = UIImage(named: RulesResources.Image.imageLogoName)
        logoImage.image = image
        return logoImage
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UpperElementsView {
    
    func setupViews() {
        
        setupView(backButton)
        setupView(rulesLabel)
        setupView(logoImage)
    }
    
    func constraintViews() {
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: topAnchor),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            backButton.heightAnchor.constraint(equalTo: rulesLabel.heightAnchor),
            
            rulesLabel.topAnchor.constraint(equalTo: topAnchor),
            rulesLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            logoImage.topAnchor.constraint(equalTo: topAnchor),
            logoImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            logoImage.heightAnchor.constraint(equalToConstant: 53),
            logoImage.widthAnchor.constraint(equalToConstant: 53)
        ])
    }
}
