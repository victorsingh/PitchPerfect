//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Victor Singh on 6/6/18.
//  Copyright © 2018 victor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //We use ib outlet ctrl drag
    @IBOutlet weak var recordingLabel: UILabel!
    // Change the outlet after record button was pressed!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View will appear will be called")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: Any) {
        print("Record button was pressed!!!")
        recordingLabel.text = "Recording in progress"
        stopRecordingButton.isEnabled = true
        recordingButton.isEnabled = false
        
    }
    @IBAction func stopRecording(_ sender: Any) {
        print("Stop Recording button was pressed")
        recordingLabel.text = "Stopped Recording"
        stopRecordingButton.isEnabled = false
        recordingButton.isEnabled = true
    }
    
}

