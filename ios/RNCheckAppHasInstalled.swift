//
//  RNCheckAppHasInstalled.swift
//  RNCheckAppHasInstalled
//
//  Created by TruongTX on 11/7/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

//  Created by Truong Techno on 8/9/18.
//  Copyright © 2018 Facebook. All rights reserved.

import Foundation
import UIKit


@objc(CopyFileToCloud)
class CopyFileToCloud: NSObject {
    
    @objc func copyFileToCloud(_ file: NSString,fileName: NSString,callback: RCTResponseSenderBlock) -> Void {
        let fileManager = FileManager.default;
        if let iCloudDocumentsURL = fileManager.url(forUbiquityContainerIdentifier: nil)?.appendingPathComponent("Documents") {
            let fileResource =  (file as String)
            let fileDestionation = iCloudDocumentsURL.path.appending(fileName as String)
                .replacingOccurrences(of: "iCloud~sumaten~container", with: "com~apple~CloudDocs")
            do {
                if(!fileManager.fileExists(atPath: iCloudDocumentsURL.path, isDirectory: nil)) {
                    try fileManager.createDirectory(atPath: iCloudDocumentsURL.path, withIntermediateDirectories: false, attributes: nil)
                }
                if(fileManager.fileExists(atPath: fileDestionation)) {
                    try fileManager.removeItem(atPath: fileDestionation)
                }
                if(!fileManager.fileExists(atPath: fileResource)){
                    return
                }
                try fileManager.moveItem(atPath: fileResource, toPath: fileDestionation)
                let success = ["success" : true]
                callback([success])
            }catch{
                let failed = ["failed" : error.localizedDescription]
                callback([failed])
            }
        }
    }
}

@objc(OpenWithMSWord)
class OpenWithMSWord: NSObject, UIDocumentInteractionControllerDelegate {
    
    @objc func openWithMSWord(_ file: NSString) -> Void {
        let check = URL(string: "ms-word:")
        guard let link = URL(string: "https://itunes.apple.com/us/app/microsoft-word/id586447913?mt=8") else { return }
        let hasInstall  = UIApplication.shared.canOpenURL(check!)
        
        if !hasInstall {
            DispatchQueue.main.async {
                if UIApplication.shared.canOpenURL(link) {
                    if #available(iOS 10.0, *) {
                        UIApplication.shared.open(link, options: [:])
                    } else {
                        UIApplication.shared.openURL(link)
                    }
                }
            }
            return
        }
        (UIApplication.shared.delegate as! AppDelegate).showMenuView(file as String?)
    }
    
}
