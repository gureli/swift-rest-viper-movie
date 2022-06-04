//
//  MovieDetailsViewController.swift
//  InvioAPI
//
//  Created irem TOSUN on 2.06.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

/// MovieDetails Module ViewController
class MovieDetailsViewController: BaseViewController {
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var genreLabel: UILabel!
    @IBOutlet var languageLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var plotLabel: UILabel!
    @IBOutlet var actorsLabel: UILabel!
    @IBOutlet var writerLabel: UILabel!
    @IBOutlet var directorLabel: UILabel!
    
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var navTitle: UINavigationItem!
    var presenter: MovieDetailsPresenterProtocol!
    var viewModel: MovieDetailsEntity.ViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navBar.backgroundColor = .clear
        if let viewModel = viewModel {
            posterImageView.loadFrom(urlPath: viewModel.poster)
            genreLabel.text = viewModel.genre
            countryLabel.text = viewModel.country
            languageLabel.text = viewModel.language
            directorLabel.text = viewModel.director
            actorsLabel.text = viewModel.actors
            plotLabel.text = viewModel.plot
            writerLabel.text = viewModel.writer
            navTitle.title = viewModel.title
        }
    }

    func setViewModel(viewModel: MovieDetailsEntity.ViewModel) {
        self.viewModel = viewModel
    }
}

// MARK: - extending MovieDetailsView to implement it's protocol

extension MovieDetailsViewController: MovieDetailsViewControllerProtocol {
}