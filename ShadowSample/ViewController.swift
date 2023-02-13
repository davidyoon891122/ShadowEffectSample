//
//  ViewController.swift
//  ShadowSample
//
//  Created by jiwon Yoon on 2023/02/09.
//

import UIKit

class ViewController: UIViewController {
    private lazy var vw: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person")
        imageView.backgroundColor = .cyan
        imageView.layer.shadowOpacity = 1.0
        imageView.layer.shadowRadius = 5.0
        imageView.layer.shadowOffset = CGSize(width: 3.0, height: 3.0)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

private extension ViewController {
    func setupViews() {
        view.backgroundColor = .systemBackground
        view.addSubview(vw)

        
        NSLayoutConstraint.activate([
            vw.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vw.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            vw.widthAnchor.constraint(equalToConstant: 200),
            vw.heightAnchor.constraint(equalToConstant: 200)
        ])
        vw.layoutIfNeeded()
        
        vw.layer.shadowPath = UIBezierPath(rect: vw.bounds).cgPath
    }
}

