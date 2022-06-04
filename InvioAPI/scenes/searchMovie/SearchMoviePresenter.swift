//
//  SearchMoviePresenter.swift
//  InvioAPI
//
//  Created irem TOSUN on 2.06.2022.
//  Copyright © 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

/// SearchMovie Module Presenter
class SearchMoviePresenter: SearchMoviePresenterProtocol {
    weak var view: SearchMovieViewControllerProtocol!
    var interactor: SearchMovieInteractorProtocol!
    var router: SearchMovieRouterProtocol!
    private var list: [Movie]?

    init() {
    }

    func sendSearchRequest(for movieTitle: String) {
        interactor.search(by: movieTitle)
    }

    func captureResults(list: [Movie]) {
        self.list = list
        if list.count == 0 {
            view.displayNotFound()
        } else {
            view.displayMoviesTableView()
        }
    }

    var rowCount: Int {
        return list?.count ?? 0
    }

    func getModel(at index: Int) -> Movie? {
        guard let list = list else {
            return nil
        }

        guard index < list.count else {
            return nil
        }

        return list[index]
    }
    func navigateToDetails(viewModel: MovieDetailsEntity.ViewModel, vc: UIViewController){
        router.navigateToDetails(viewModel: viewModel, vc: vc)
    }
    func showErrorMessage(error: Error){
        
    }
}
