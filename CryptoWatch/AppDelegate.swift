//
//  AppDelegate.swift
//  CryptoWatch
//
//  Created by Ravisankar R on 13/05/21.
//

import Cocoa
import SwiftUI

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var popOver = NSPopover.init()
    var statusBar: StatusBarController?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        popOver.contentSize = NSSize(width: 360, height: 360)
        popOver.contentViewController = NSHostingController(rootView: contentView)
        
        statusBar = StatusBarController.init(popOver)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

