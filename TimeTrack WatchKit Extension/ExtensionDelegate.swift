//
//  ExtensionDelegate.swift
//  TimeTrack WatchKit Extension
//
//  Created by Alex Kapustka on 7/22/16.
//  Copyright © 2016 Alex Kapustka. All rights reserved.
//

import WatchKit

class ExtensionDelegate: NSObject, WKExtensionDelegate {

    func applicationDidFinishLaunching() {
        // Perform any final initialization of your application.
    }

    func applicationDidBecomeActive() {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillResignActive() {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, etc.
    }

    func handle(_ backgroundTasks: Set<WKRefreshBackgroundTask>) {
        // Sent when the system needs to launch the application in the background to process tasks. Tasks arrive in a //set, so loop through and process each one.
		//print("at least i got here")
		//WKInterfaceDevice.current().play(.stop)
        for task in backgroundTasks {
			if task is WKApplicationRefreshBackgroundTask {
				print("i think it works")
				WKInterfaceDevice.current().play(.stop)
				
				task.setTaskCompleted()
			}
        }
    }

}
