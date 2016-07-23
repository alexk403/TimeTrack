//
//  InterfaceController.swift
//  TimeTrack WatchKit Extension
//
//  Created by Alex Kapustka on 7/22/16.
//  Copyright © 2016 Alex Kapustka. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: AnyObject?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
	
	@IBAction func timerSwitchEnabled(_ value: Bool) {
		if value {
			print("switch on")
			/*let date = Date()
			let calendar = Calendar.current
			let components = calendar.components(.second, from: date)
			let delayedStart: Double = (Double) (60 - components.second!)
			let dispatchTime: DispatchTime = DispatchTime.now() + Double(Int64(delayedStart * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
			
			DispatchQueue.main.after(when: dispatchTime, execute: {
				let userInfo = ["reason" : "background update"]
				WKExtension.shared().scheduleBackgroundRefresh(withPreferredDate: Date(timeIntervalSinceNow: 5.0), userInfo: userInfo, scheduledCompletion: { error in
					if (error == nil) {
						print("background task scheduled")
					}
				})
			})*/
			let userInfo = ["reason" : "background update"]
			WKExtension.shared().scheduleBackgroundRefresh(withPreferredDate: Date(timeIntervalSinceNow: 5.0), userInfo: userInfo, scheduledCompletion: { error in
				print("well im here")
				if (error == nil) {
					print("background task scheduled")
				}
			})
		}
	}
	
	/*@IBOutlet var timerLabel: WKInterfaceLabel!
	
	var mainTimer: Timer! = nil
	
	func timerDone(_ timer:Timer){
		WKInterfaceDevice.current().play(.stop)
		//print("Done!")
	}
	
	@IBAction func switchEnabled(_ value: Bool) {
		if(value){
			//print("switch on")
			//print(myTimer.valid)
			let date = Date()
			let calendar = Calendar.current
			let components = calendar.components([.second], from: date)
			let delayedStart:Double=(Double)(60-components.second!)
			let dispatchTime: DispatchTime = DispatchTime.now() + Double(Int64(delayedStart * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
			DispatchQueue.main.after(when: dispatchTime, execute: {
				self.myTimer = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(InterfaceController.timerDone(_:)), userInfo: nil, repeats: true)
			})
		}
		else{
			// invalidate timer here
			//print(myTimer.valid)
			myTimer.invalidate()
			//print("switch off")
			//print(myTimer.valid)
		}
		
	}*/

}
