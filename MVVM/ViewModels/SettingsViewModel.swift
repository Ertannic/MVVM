//
//  SettingsViewModel.swift
//  MVVM
//
//  Created by Ertannic Saralay on 04.04.2024.
//

import Foundation

class SettingsViewModel {
    var settingsItems: [[SettingsItem]] = [
        [
            SettingsItem(title: "Аккаунт", value: "On"),
            SettingsItem(title: "Главная", value: "On"),
            SettingsItem(title: "Покупки", value: "Off"),
            SettingsItem(title: "Рекомендации", value: "English"),
        ],
        [
            SettingsItem(title: "Дополнительная информация", value: "On"),
            SettingsItem(title: "Функионал", value: "Off"),
            SettingsItem(title: "Разработчики", value: "50%")
        ]
    ]
}
