describe "Application 'quotidian'" do
  before do
    @app = UIApplication.sharedApplication
  end

  #UIApplication.sharedApplication.keyWindow.rootViewController.visibleViewController.navigationItem.title
  it "starts on Things to do screen" do
    controller = @app.keyWindow.rootViewController.visibleViewController
    title = controller.navigationItem.title
    title.should == 'Things to do'
  end
end
