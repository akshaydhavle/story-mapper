describe ProjectsController do
  describe "GET index" do
    before :each do
      @user = Factory :user
      @project = Project.create(:name => "Test Project")
    end
  
    it "fails without logging in" do
      get :index
      should redirect_to new_user_session_path
      assigns(:projects).should be_nil
    end
  
    it "assigns @projects" do
      sign_in @user
      get :index
      assigns(:projects).should eq([@project])
    end
    
    it "show me a project page and assign @project" do
      sign_in @user
      get :show, :id => @project.id
      assigns(:project).should eq(@project)
    end
  end
end
