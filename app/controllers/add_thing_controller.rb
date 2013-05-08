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

    #delete this button; troubleshooting spec not tapping bar button by label
    cancel_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    cancel_button.setTitle("cancel-add", forState: UIControlStateNormal)
    cancel_button.sizeToFit
    cancel_button.frame = CGRect.new(
      [10, self.view.frame.size.height - 60 - cancel_button.frame.size.height],
      cancel_button.frame.size)
    self.view.addSubview(cancel_button)
    cancel_button.addTarget(self,
                             action:"cancelAdd", forControlEvents:UIControlEventTouchUpInside)
  end

  def cancelAdd
    self.dismissViewControllerAnimated(true, completion: lambda {})
  end
end
