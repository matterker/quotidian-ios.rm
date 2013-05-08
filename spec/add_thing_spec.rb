describe 'Add Thing To Do' do
  tests AddThingController

  it 'has the correct title' do
    controller.title.should == 'Add Thing'
  end

  it 'has a cancel button' do
    controller.navigationItem.leftBarButtonItem.accessibilityLabel.should == 'cancel-add'
  end

  it 'closes when tapping cancel' do
    tap('cancel-add')
    controller.view.hidden.should == true
  end
end
