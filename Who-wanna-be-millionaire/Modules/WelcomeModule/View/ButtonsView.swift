import UIKit

class ButtonsView: UIView {
    
    // Added undeline
    private lazy var attrs = [
        NSAttributedString.Key.font : WelcomeConstants.Fonts.setFont(name: .textAvenirFontBold, size: 32) ?? .systemFont(ofSize: 32),
        NSAttributedString.Key.foregroundColor : UIColor(red: 83/255, green: 225/250, blue: 165/255, alpha: 1.0),
        NSAttributedString.Key.underlineStyle : 1] as [NSAttributedString.Key : Any]

    private lazy var startAttributedString = NSMutableAttributedString(string: "")
    private lazy var roolsAttributedString = NSMutableAttributedString(string: "")
    
    lazy var rulesButton: UIButton = {
        let button = UIButton(type: .system)
        let buttonTitleStr = NSMutableAttributedString(string: WelcomeConstants.Text.rulesButtonTitleText, attributes:attrs)
        roolsAttributedString.append(buttonTitleStr)
        button.setAttributedTitle(roolsAttributedString, for: .normal)
        return button
    }()
    
    private lazy var startGameButton: UIButton = {
        let button = UIButton(type: .system)
        let buttonTitleStr = NSMutableAttributedString(string: WelcomeConstants.Text.startButtonTitleText, attributes:attrs)
        startAttributedString.append(buttonTitleStr)
        button.setAttributedTitle(startAttributedString, for: .normal)
        return button
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

extension ButtonsView {
    
    func setupViews() {
        setupView(rulesButton)
        setupView(startGameButton)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            rulesButton.topAnchor.constraint(equalTo: topAnchor),
            rulesButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            startGameButton.topAnchor.constraint(equalTo: rulesButton.bottomAnchor, constant: 6),
            startGameButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
