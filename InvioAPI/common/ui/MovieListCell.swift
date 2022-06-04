//
//  MovieListCell.swift
//  InvioAPI
//
//  Created by irem TOSUN on 2.06.2022.
//

import UIKit

class MovieListCell: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var movieImage: UIImageView!
    @IBOutlet var ratingLabel: UILabel!

    var model: Movie? {
        didSet {
            titleLabel.text = model?.title ?? ""
            subtitleLabel.text = model?.genre ?? ""
            descriptionLabel.text = shortenPlot(model?.plot ?? "")
            if let path = model?.poster {
                movieImage.loadFrom(urlPath: path)
            }
            ratingLabel.text = getRatings(model?.ratings)
        }
    }

    private func shortenPlot(_ plot: String) -> String {
        guard plot.count > 0 else { return plot }
        guard plot.count > 100 else { return plot }

        let index = plot.index(plot.startIndex, offsetBy: 100)
        let plotShortened = plot[..<index]
        return String(plotShortened) + "..."
    }

    private func getRatings(_ ratings: [Rating]?) -> String {
        var text = ""
        guard let ratings = ratings else {
            return text
        }
        let sources = ratings.map { $0.source }
        let values = ratings.map { $0.value }
        if sources.count == values.count {
            for i in 0 ..< sources.count {
                text += "\(sources[i])"
                text += ":\(values[i]) \n"
            }
        }
        return text
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
