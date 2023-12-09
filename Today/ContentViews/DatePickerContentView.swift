//
//  DatePickerContentView.swift
//  Today
//
//  Created by Yuga Samuel on 09/12/23.
//

import UIKit

class DatePickerContentView: UIView, UIContentView {
    struct Configuration: UIContentConfiguration {
        var dueDate: Date = Date.now
        var onChange: (Date) -> Void = { _ in }
        
        func makeContentView() -> UIView & UIContentView {
            return DatePickerContentView(self)
        }
    }
    
    let datePicker = UIDatePicker()
    var configuration: UIContentConfiguration {
        didSet {
            configure(configuration: configuration)
        }
    }
    
    init(_ configuration: UIContentConfiguration) {
        self.configuration = configuration
        super.init(frame: .zero)
        addPinnedSubview(datePicker)
        datePicker.preferredDatePickerStyle = .inline
        datePicker.addTarget(self, action: #selector(didPick(_:)), for: .valueChanged)
    }
    
    override var intrinsicContentSize: CGSize {
        CGSize(width: 0, height: 44)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    func configure(configuration: UIContentConfiguration) {
        guard let configuration = configuration as? Configuration else { return }
        datePicker.date = configuration.dueDate
    }
    
    @objc private func didPick(_ sender: UIDatePicker) {
        guard let configuration = configuration as? Configuration else { return }
        configuration.onChange(datePicker.date)
    }
}

extension UICollectionViewCell {
    func datePickerConfiguration() -> DatePickerContentView.Configuration {
        return DatePickerContentView.Configuration()
    }
}
