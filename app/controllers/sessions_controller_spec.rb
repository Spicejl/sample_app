require 'spec_helper'

describe SessionsController do
  render_views

  describe "GET 'new'" do

    it "should be successful" do
      get :new
      response.should be_success
    end

    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Sign in")
    end
  end
  
  describe "POST 'create'" do
    
    describe "with valid email and password" do

          before(:each) do
            @user = Factory(:user)
            @attr = { :email => @user.email, :password => @user.password }
          end

          it "should sign the user in" do
            post :create, :session => @attr
            # Fill in with tests for a signed-in user.
          end

          it "should redirect to the user show page" do
            post :create, :session => @attr
            response.should redirect_to(user_path(@user))
          end
    end
  end
   
end