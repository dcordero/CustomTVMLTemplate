import UIKit
import TVMLKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, TVApplicationControllerDelegate {

    var window: UIWindow?
    var appController: TVApplicationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)

        TVInterfaceFactory.shared().extendedInterfaceCreator = CustomInterfaceFactory()
        TVElementFactory.registerViewElementClass(TVViewElement.self, elementName: CustomInterfaceFactory.templateName)
        
        let appControllerContext = TVApplicationControllerContext()
        let appJS = Bundle.main.url(forResource: "application", withExtension: "js")

        if let javaScriptURL = appJS {
            appControllerContext.javaScriptApplicationURL = javaScriptURL
        }

        appController = TVApplicationController(context: appControllerContext,
                                                window: window,
                                                delegate: self)

        return true
    }
}
