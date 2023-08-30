//
//  LessonViewController.swift
//  Lessonse_UI
//
//  Created by Софья Норина on 30.08.2023.
//

import UIKit

class LessonViewController: UIViewController {
    let mainLabel = TestView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureView()
        configurationLayout()
    }
    
    private func configurationLayout() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainLabel)
        
        
        NSLayoutConstraint.activate([
            mainLabel.widthAnchor.constraint(equalToConstant: 300),
            mainLabel.heightAnchor.constraint(equalToConstant: 100),
            
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100)
        ])
    }
    
    private func configureView() {
        mainLabel.text = "Меняем текст на другой"
    }
    
}

final class TestView: UIView{
    
    public var text = ""{
        didSet{
            textLabel.text = text
        }
    }
    
    private let textLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configurationLayout()
        configurationView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configurationLayout()
        configurationView()
    }
    
    private func configurationLayout(){
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(textLabel)
        
        NSLayoutConstraint.activate([
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    private func configurationView() {
        backgroundColor = .blue
        
        textLabel.textColor = .black
        textLabel.text = "Какой-то текст"
    }
}
