//
//  Ext + UIStackView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

extension UIStackView {
  func addArrangedSubviews(_ views: UIView...) {
      addArrangedSubviews(Array(views))
  }

  func addArrangedSubviews(_ views: [UIView]) {
      views.forEach { addArrangedSubview($0) }
  }

  private static func stack(subviews: [UIView], spacing: CGFloat = 0, axis: NSLayoutConstraint.Axis, alignment: Alignment = .fill, distribution: Distribution = .fill) -> UIStackView {
    let view = UIStackView(arrangedSubviews: subviews)
    view.axis = axis
    view.alignment = alignment
    view.distribution = distribution
    view.spacing = spacing
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }

  /**
   - parameter subviews: see *arrangedSubviews*
   - parameter spacing: default value: 0
   - parameter alignment: default value: .fill
   - parameter distribution: default value: .fill
   */
  static func vertical(subviews: [UIView], spacing: CGFloat = 0, alignment: Alignment = .fill, distribution: Distribution = .fill) -> UIStackView {
    .stack(subviews: subviews, spacing: spacing, axis: .vertical, alignment: alignment, distribution: distribution)
  }

  /**
   - parameter subviews: see *arrangedSubviews*
   - parameter spacing: default value: 0
   - parameter alignment: default value: .fill
   - parameter distribution: default value: .fill
   */
  static func horizontal(subviews: [UIView], spacing: CGFloat = 0, alignment: Alignment = .fill, distribution: Distribution = .fill) -> UIStackView {
      .stack(subviews: subviews, spacing: spacing, axis: .horizontal, alignment: alignment, distribution: distribution)
  }
}

