//
//  DetailViewController.swift
//  AppleNews
//
//  Created by anna.zubakina on 22/11/2023.
//

import UIKit

class DetailViewController: UIViewController {

    private let article: Article
    
    init(article: Article) {
        self.article = article
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        
        
           view.backgroundColor = .secondarySystemBackground
        
           let titleLabel = UILabel()
           titleLabel.text = article.title
           titleLabel.font = UIFont.boldSystemFont(ofSize: 18)
           titleLabel.numberOfLines = 0
           titleLabel.textAlignment = .center
           titleLabel.translatesAutoresizingMaskIntoConstraints = false
           
           let imageView = UIImageView()
           if let imageUrl = article.urlToImage, let url = URL(string: imageUrl) {
               imageView.sd_setImage(with: url, completed: nil)
           }
        
           imageView.contentMode = .scaleAspectFit
           imageView.backgroundColor = .secondarySystemBackground
           imageView.translatesAutoresizingMaskIntoConstraints = false
           
        /*   let descriptionLabel = UILabel()
           descriptionLabel.text = article.description
           descriptionLabel.numberOfLines = 0
           descriptionLabel.translatesAutoresizingMaskIntoConstraints = false */
        
           let contentLabel = UILabel()
           contentLabel.text = article.content
           contentLabel.numberOfLines = 0
           contentLabel.translatesAutoresizingMaskIntoConstraints = false
        
           let authorionLabel = UILabel()
           authorionLabel.text = article.author
           authorionLabel.numberOfLines = 0
           authorionLabel.translatesAutoresizingMaskIntoConstraints = false
           
           view.addSubview(titleLabel)
           view.addSubview(imageView)
           view.addSubview(contentLabel)
        //   view.addSubview(descriptionLabel)
           view.addSubview(authorionLabel)
           
           NSLayoutConstraint.activate([
               titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
               titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
               titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
               
               imageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
               imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
               imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
               imageView.heightAnchor.constraint(equalToConstant: 200),
               
               contentLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
               contentLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
               contentLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
               
           //    descriptionLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
          //     descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
           //    descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
               
               authorionLabel.topAnchor.constraint(equalTo: contentLabel.bottomAnchor, constant: 16),
               authorionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
               authorionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
           ])
       }
}
