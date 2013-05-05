describe 'Add Thing To Do' do
  tests ThingsController

  it 'has + icon for adding things' do
    controller.navigationItem.rightBarButtonItem.accessibilityHint.should == 'add-thing'
  end
end
