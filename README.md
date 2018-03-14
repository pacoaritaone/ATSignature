# ATSignature

[![CI Status](http://img.shields.io/travis/apptasklpaco/ATSignature.svg?style=flat)](https://travis-ci.org/apptasklpaco/ATSignature)
[![Version](https://img.shields.io/cocoapods/v/ATSignature.svg?style=flat)](http://cocoapods.org/pods/ATSignature)
[![License](https://img.shields.io/cocoapods/l/ATSignature.svg?style=flat)](http://cocoapods.org/pods/ATSignature)
[![Platform](https://img.shields.io/cocoapods/p/ATSignature.svg?style=flat)](http://cocoapods.org/pods/ATSignature)

## Summary

It is one of the most simple customized signature view with basic controls

## Description

The controls include Button Actions, Button color, Button title. It has total four styles in the Example. You can simply override several delegate functions to handle user interactions. The implementation of delegate functions is optional. It also has several styles for the signature view. *(The size of signature view is based on a super view  assigned to the view controller. You should fix the size of the super view. Auto size is not recommended.

## Example

```
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
}
```

## Requirements

Delegate
```
@objc public protocol ATSignatureDelegate {
    @objc optional func atSignatureCancel(_: ATSignatureViewController)
    @objc optional func atSignatureNotSigned(_: ATSignatureViewController)
    @objc optional func atSignatureSetSaveDirectory(_: ATSignatureViewController) -> String
    @objc func atSignatureSigned(_: ATSignatureViewController, didSign signatureImage : UIImage, signatureDidSavePath: String)
}
```

## Installation

This project temporary unavailable on cocoapods. You can download the example in github.

ATSignature is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ATSignature"
```

## Author

paco yeung , pacoaritaone@gmail.com

## License

ATSignature is available under the MIT license. See the LICENSE file for more info.
