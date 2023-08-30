//
//  ViewController.swift
//  Lessonse_UI
//
//  Created by Софья Норина on 30.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
        button.setTitle("Кнопка", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .green
        
        
    }
    private func setUpView() {
        //Отключаем автоматическое создание constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        //Добавляем представление к родительскому View
        view.addSubview(button)
        
        //Создаем ограничения и сразу активируем их
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15)
        ])
    
    }
    
}
