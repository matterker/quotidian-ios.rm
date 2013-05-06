class ThingsController < UITableViewController
  def viewDidLoad
    navigationItem.title = 'Things to do'
    addButton = UIBarButtonItem.alloc.initWithBarButtonSystemItem(
      UIBarButtonSystemItemAdd, target:self, action:'addThing')
    addButton.accessibilityHint = 'add-thing'
    navigationItem.rightBarButtonItem = addButton
  end

  def addThing
    controller = AddThingController.alloc.initWithNibName(nil, bundle:nil)
    controller.things_controller = self
    self.presentViewController(
      UINavigationController.alloc.initWithRootViewController(controller),
      animated: true,
      completion: lambda {})
  end
end
