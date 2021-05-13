//
//  StatusBarController.swift
//  CryptoWatch
//
//  Created by Ravisankar R on 13/05/21.
//

import Foundation
import AppKit

class StatusBarController {
    
    private var statusBar: NSStatusBar
    private var statusItem: NSStatusItem
    private var popOver: NSPopover
    
    init(_ popOver: NSPopover) {
        
        self.popOver = popOver
        statusBar = NSStatusBar.init()
        statusItem = statusBar.statusItem(withLength: 28.0)
        
        if let statusBarButton = statusItem.button {
            statusBarButton.image = #imageLiteral(resourceName: "cloud")
            statusBarButton.image?.size = NSSize(width: 18.0, height: 18.0)
            statusBarButton.image?.isTemplate = true
            
            statusBarButton.action = #selector(togglePopOver(sender:))
            statusBarButton.target = self
        }
    }
    
    @objc func togglePopOver(sender: AnyObject) {
        
        if popOver.isShown {
            hidePopOver(sender)
        } else {
            showPopOver(sender)
        }
    }
    
    func showPopOver(_ sender: AnyObject) {
        if let statusBarButton = statusItem.button {
            popOver.show(relativeTo: statusBarButton.bounds, of: statusBarButton, preferredEdge: NSRectEdge.maxY)
        }
    }
    
    func hidePopOver(_ sender: AnyObject) {
        popOver.performClose(sender)
    }
}
