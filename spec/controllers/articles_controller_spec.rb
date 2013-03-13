require 'spec_helper'

describe ArticlesController do
  before(:each) do
      @article 						= 	Fabricate(:article)
      @user 							= 	Fabricate(:user)
      @category						= 	Fabricate(:category)
      @article.user 			= 	@user
      @article.category 	= 	@category
      @article.save
      sign_in :user, @user
      controller.stub(:authenticate_user!).and_return true
      # http://stackoverflow.com/questions/8819343/rails-rspec-devise-undefined-method-authenticate-user
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
