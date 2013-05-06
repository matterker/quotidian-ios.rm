describe 'Add Thing To Do' do
  tests ThingsController

  it 'has + icon for adding things' do
    controller.navigationItem.rightBarButtonItem.accessibilityHint.should == 'add-thing'
  end

  it 'displays the add thing modal form when clicking add icon' do
    controller.navigationItem.rightBarButtonItem.tap()
  end
end
