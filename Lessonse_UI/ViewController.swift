//
//  ViewController.swift
//  Lessonse_UI
//
//  Created by Софья Норина on 30.08.2023.
//

import UIKit

class ViewController: UIViewController {
    let  mainLabel = UILabel()
    let titleLabel = UILabel()
    let button = UIButton()
    
    let horizontalStack = UIStackView()
    let verticalStack = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = "Заголовок с каким-то текстом"
        mainLabel.textColor = .black
        
        
        titleLabel.text = "Title"
        titleLabel.textColor = .black
        
        
        button.setTitle("Кнопка", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .green
        
        
        horizontalStack.axis = .horizontal
        verticalStack.axis = .vertical
        setUpView()
        
    }
    private func setUpView() {
        //Отключаем автоматическое создание constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        //Добавляем представление к родительскому View
        view.addSubview(button)
        
        [button, titleLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            horizontalStack.addArrangedSubview($0)
        }
        
        [mainLabel, horizontalStack].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            verticalStack.addArrangedSubview($0)
        }
        //Отключаем автоматическое создание constraints
        verticalStack.translatesAutoresizingMaskIntoConstraints = false
        //Добавляем вертикальный стек к родительскому View
        view.addSubview(verticalStack)
        
        //Создаем ограничения и сразу активируем их
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15)
        ])
    
    }
    
}
