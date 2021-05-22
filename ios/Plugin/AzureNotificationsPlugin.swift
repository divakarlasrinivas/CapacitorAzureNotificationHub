import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(AzureNotificationsPlugin)
public class AzureNotificationsPlugin: CAPPlugin {
    private let implementation = AzureNotifications()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    
    @objc func initialize(_ call: CAPPluginCall) {
        
        guard let notificationHubName = call.options["notificationHubName"] as? String else {
            call.reject("Must provide notificationHubName")
            return
          }
        guard let connectionString = call.options["connectionString"] as? String else {
            call.reject("Must provide connectionString")
            return
          }
        
        guard let deviceTag = call.options["deviceTag"] as? String else {
            call.reject("Must provide connectionString")
            return
          }

        call.resolve([
            "value": implementation.initialize(notificationHubName, connectionString, deviceTag)
        ])
    }
}
