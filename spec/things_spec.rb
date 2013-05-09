describe 'Things main page' do
  tests ThingsController

  it 'has + icon for adding things' do
    controller.navigationItem.rightBarButtonItem.accessibilityLabel.should == 'add-thing'
  end

#  it 'displays the add thing modal form when clicking add icon' do
#    tap('add-thing')
#    #form displayed?
#  end
end
