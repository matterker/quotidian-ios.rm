class AddThingController < UIViewController
  attr_accessor :things_controller

  def viewDidLoad
    super

    self.title = "Add Thing"
    self.view.backgroundColor = UIColor.whiteColor
    cancel = UIBarButtonItem.alloc.initWithBarButtonSystemItem(
      UIBarButtonSystemItemCancel, target:self, action:'cancelAdd')
    cancel.accessibilityLabel = 'cancel-add'
    navigationItem.leftBarButtonItem = cancel
  end

  def cancelAdd
    self.dismissViewControllerAnimated(true, completion: lambda {})
  end
end
