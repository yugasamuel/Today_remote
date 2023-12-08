//
//  ReminderListViewControler+Actions.swift
//  Today
//
//  Created by Yuga Samuel on 08/12/23.
//

import UIKit

extension ReminderListViewController {
    @objc func didPressDoneButton(_ sender: ReminderDoneButton) {
        guard let id = sender.id else { return }
        completeReminder(withId: id)
    }
}
