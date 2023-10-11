//
//  ViewController.swift
//  AppEventCount
//
//  Created by Andrew Higbee on 10/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectToSceneLabel: UILabel!
    @IBOutlet weak var sceneDidBecomeActiveLabel: UILabel!
    @IBOutlet weak var sceneWillResignActiveLabel: UILabel!
    @IBOutlet weak var sceneWillEnterForegroundLabel: UILabel!
    @IBOutlet weak var sceneDidEnterBackgroundLabel: UILabel!
    
//    var didFinishLaunchingCount = 0
//    var configurationForConnectingCount = 0
    var willConnectToSceneCount = 0
    var sceneDidBecomeActiveCount = 0
    var sceneWillResignActiveCount = 0
    var sceneWillEnterForegroundCount = 0
    var sceneDidEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(appDelegate.launchCount) times"
        configurationForConnectingLabel.text = "The app configuration has connected \(appDelegate.configurationForConnectionCount) times"
        willConnectToSceneLabel.text = "The app has connected to scene \(willConnectToSceneCount) times"
        sceneDidBecomeActiveLabel.text = "The scene became active \(sceneDidBecomeActiveCount) times"
        sceneWillResignActiveLabel.text = "The scene has resigned active \(sceneWillResignActiveCount) times"
        sceneWillEnterForegroundLabel.text = "The scene did enter foreground \(sceneWillEnterForegroundCount) times"
        sceneDidEnterBackgroundLabel.text = "The scene entered background \(sceneDidEnterBackgroundCount) times"
    }

}

