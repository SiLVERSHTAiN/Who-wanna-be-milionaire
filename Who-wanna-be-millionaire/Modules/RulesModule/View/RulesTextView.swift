import UIKit

class RulesTextView: UIView {
    
    private lazy var rulesTextView: UITextView = {
        let textView = UITextView()
        textView.isEditable = false
        textView.layer.borderWidth = 0
        textView.layer.cornerRadius = 10
        textView.layer.borderColor = UIColor.white.cgColor
        textView.text = RulesResources.Text.RoolsText.result
        textView.font = RulesResources.Fonts.setFont(name: .textAvenirFont, size: 14)
        textView.textColor = RulesResources.TextColor.green
        textView.textAlignment = .justified
        textView.backgroundColor = .clear
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame) 
            
        setViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RulesTextView {
    
    func setViews() {
        
        setupView(rulesTextView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            rulesTextView.topAnchor.constraint(equalTo: topAnchor),
            rulesTextView.leadingAnchor.constraint(equalTo: leadingAnchor),
            rulesTextView.trailingAnchor.constraint(equalTo: trailingAnchor),
            rulesTextView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
