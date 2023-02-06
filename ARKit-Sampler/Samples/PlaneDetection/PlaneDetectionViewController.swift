////
////  PlaneDetectionViewController.swift
////  ARKit-Sampler
////
////  Created by Shuichi Tsutsumi on 2017/09/20.
////  Copyright © 2017 Shuichi Tsutsumi. All rights reserved.
////
//
//import UIKit
//import ARKit
//
//class PlaneDetectionViewController: UIViewController, ARSCNViewDelegate {
//
//    @IBOutlet var sceneView: ARSCNView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        sceneView.delegate = self
//        sceneView.scene = SCNScene()
//        sceneView.debugOptions = [SCNDebugOptions.showFeaturePoints]
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        let configuration = ARWorldTrackingConfiguration()
//        configuration.planeDetection = [.horizontal, .vertical]
//
//        sceneView.session.run(configuration)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//
//        sceneView.session.pause()
//    }
//
//    // MARK: - ARSCNViewDelegate
//
//    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
//        guard let planeAnchor = anchor as? ARPlaneAnchor else {fatalError()}
//        let color = planeAnchor.alignment == .horizontal ? UIColor.arBlue : UIColor.green
//        planeAnchor.addPlaneNode(on: node, contents: color.withAlphaComponent(0.5))
//    }
//
//    func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
//        guard let planeAnchor = anchor as? ARPlaneAnchor else {fatalError()}
//        planeAnchor.updatePlaneNode(on: node)
//    }
//}
//
import UIKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate , ARSessionDelegate{
    
    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        // Create a new scene
        let scene = SCNScene()
        
        // Set the scene to the view
        sceneView.scene = scene
        
        // Run the ARSession
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = .horizontal
        configuration.isLightEstimationEnabled = true
        sceneView.session.run(configuration)
    }
//    let sdkVersion = Bundle(identifier: "com.apple.pkg.ARKit")?.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
//    func print("ARKit SDK Version: \(sdkVersion ?? "Unknown")")
    
//    func checkSDKVersion() {
//        let sdkVersion = Bundle(identifier: "com.apple.pkg.ARKit")?.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
//        print("ARKit SDK Version: \(sdkVersion ?? "Unknown")")
//    }


    
//    func session(_ session: ARSession, didUpdate frame: ARFrame) {
//        if let detectedBodies = frame.detectedBody as? [ARBody2D] {
//            for body in detectedBodies {
//                // Access the body's joints and update the scene accordingly
//                let headJoint = body.joints[.head]
//                // ...
//                NSLog("head position",headJoint);
//            }
//        }
//    }
}




