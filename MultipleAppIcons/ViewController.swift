//
//  ViewController.swift
//  MultipleAppIcons
//
//  Created by ArnoldKy on 12/23/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let images = ["facebook", "uber", "google", "logo"]

        for (index, image) in images.enumerated() {
            let button = UIButton(frame: CGRect(x: 150, y: view.safeAreaInsets.top + 200 + (CGFloat(index) * 130), width: 120, height: 120))
            button.setImage(UIImage(named: image), for: .normal)
            button.layer.cornerRadius = 9
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.label.cgColor
            button.tag = index + 1
            button.addTarget(self, action: #selector(didTapAppIcon(_:)), for: .touchUpInside)
            view.addSubview(button)
        }
    }

    @objc private func didTapAppIcon(_ sender: UIButton) {
        if sender.tag == 1 {
            UIApplication.shared.setAlternateIconName("facebook") { error in
                guard error == nil else {
                    print("Something went wrong")
                    return
                }
                print("icon updated")
            }
        }
        else if sender.tag == 2 {
            UIApplication.shared.setAlternateIconName("uber") { error in
                guard error == nil else {
                    print("Something went wrong")
                    return
                }
                print("icon updated")
            }
        }
        else if sender.tag == 3 {
            UIApplication.shared.setAlternateIconName("google") { error in
                guard error == nil else {
                    print("Something went wrong")
                    return
                }
                print("icon updated")
            }
        }
        else if sender.tag == 4 {
            UIApplication.shared.setAlternateIconName(nil) { error in
                guard error == nil else {
                    print("Something went wrong")
                    return
                }
                print("icon updated")
            }
        }
    }

}

