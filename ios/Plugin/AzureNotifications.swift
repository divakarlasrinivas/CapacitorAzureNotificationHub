import Foundation
import WindowsAzureMessaging;


@objc public class AzureNotifications: NSObject, MSNotificationHubDelegate {
    @objc public func echo(_ value: String) -> String {
        return value
    }
    
    @objc public func initialize(_ notificationHubName: String, _ connectionString: String, _ deviceTag: String) -> String {
        
        MSNotificationHub.setDelegate(self)
        // Create with alert, badge and sound
        let hubOptions = MSNotificationHubOptions(withOptions: [.alert, .badge, .sound])

        // Start SDK
        MSNotificationHub.start(connectionString: connectionString, hubName: notificationHubName, options: hubOptions!)
        
        // The Device ID from the PNS
        let deviceToken =  MSNotificationHub.getPushChannel()
        NSLog(deviceToken)
        
        // Add device tag.
        addTags(deviceTag)

        return deviceTag;
    }
    
    func addTags(_ deviceTag: String){
        MSNotificationHub.addTags([deviceTag])
    }
    
    
    
    
}
