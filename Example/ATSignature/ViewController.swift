//
//  ViewController.swift
//  ATSignature
//
//  Created by apptasklpaco on 07/09/2017.
//  Copyright (c) 2017 apptasklpaco. All rights reserved.
//

import UIKit
import ATSignature

class ViewController: UIViewController, ATSignatureDelegate {

    @IBOutlet weak var targetUIView: UIView!
    
    // MARK: - ViewController
    private var vc:ATSignatureViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Only one single line code you need to add to your project
        vc = ATSignatureViewController(signatureDelegate: self, targetView: targetUIView)
    }

    // MARK: - Delegate
    
    //Set action after confirm button clicked with signature
    func atSignatureSigned(_: ATSignatureViewController, didSign signatureImage : UIImage, signatureDidSavePath: String) {
        //signatureDidSavePath: a filePath where actually saved after processing NSKeyedArchiver
        print("Did Signature")
    }
    
    //(optional)Set click action after cancel button clicked
    func atSignatureCancel(_: ATSignatureViewController) {
        print("Cancel")
    }
    //(optional)Set file directory
    func atSignatureSetSaveDirectory(_: ATSignatureViewController) -> String {
        //if nil or "" return, it will use the library default directory
        return ""
    }
    //(optional)Set action after confirm button clicked with no signature
    func atSignatureNotSigned(_: ATSignatureViewController) {
        print("Not Signature")
    }

    @IBAction func style1ButtonDidPress(_ sender: UIButton) {
        vc.view.removeFromSuperview()
        vc.removeBorder()
        vc = ATSignatureViewController(signatureDelegate: self, targetView: targetUIView, display: ["Any String","Cancel","Done"], showModal: 1, borderModal: 1)
    }
    
    @IBAction func style2ButtonDidPress(_ sender: UIButton) {
        vc.view.removeFromSuperview()
        vc.removeBorder()
        vc = ATSignatureViewController(signatureDelegate: self, targetView: targetUIView, display: ["Any String","Cancel","Done"], showModal: 1, borderModal: 2)
    }

    @IBAction func style3ButtonDidPress(_ sender: UIButton) {
        vc.view.removeFromSuperview()
        vc.removeBorder()
        vc = ATSignatureViewController(signatureDelegate: self, targetView: targetUIView, display: ["Any String","Cancel","Done"], showModal: 2, borderModal: 1)
    }
    
    @IBAction func style4ButtonDidPress(_ sender: UIButton) {
        vc.view.removeFromSuperview()
        vc.removeBorder()
        vc = ATSignatureViewController(signatureDelegate: self, targetView: targetUIView, display: ["Any String","Cancel","Done"], showModal: 2, borderModal: 2)
    }
}

