//
//  DetailViewController.swift
//  Project1
//
//  Created by Sarah Rebecca Estrellado on 4/21/21.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var pictureNum = 0
    var allPictures = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Picture: \(pictureNum)/\(allPictures)"
        
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }

}
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }

}
