class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    things_controller = ThingsController.alloc.initWithNibName(nil, bundle:nil)
    nav = UINavigationController.alloc.initWithRootViewController(things_controller)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    @window.rootViewController = nav
    true
  end
end
