class ThingsController < UITableViewController
  def viewDidLoad
    navigationItem.title = 'Things to do'
    addButton = UIBarButtonItem.alloc.initWithBarButtonSystemItem(
      UIBarButtonSystemItemAdd, target:self, action:'addThing')
    addButton.accessibilityHint = 'add-thing'
    navigationItem.rightBarButtonItem = addButton
  end

  def addThing
    nil
  end
end
