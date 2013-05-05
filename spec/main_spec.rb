describe "Application 'quotidian'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "starts on Things to do screen" do
    controller = @app.keyWindow.rootViewController
    title = controller.navigationItem.title
    title.should == 'Things to do'
  end
end
