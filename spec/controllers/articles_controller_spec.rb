require 'spec_helper'

describe ArticlesController do
  before(:each) do
      @article 						= 	Fabricate(:article)
      @user 							= 	Fabricate(:user)
      @category						= 	Fabricate(:category)
      @article.user 			= 	@user
      @article.category 	= 	@category
      @article.save
      sign_in @user
  end

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

end
