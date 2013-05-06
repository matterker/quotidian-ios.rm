class AddThingController < UIViewController
  attr_accessor :things_controller

  def viewDidLoad
    super

    self.title = "Add Thing"
    self.view.backgroundColor = UIColor.whiteColor

  end
end
