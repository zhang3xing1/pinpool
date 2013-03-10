require 'spec_helper'

describe Article do
    before(:each) do
        @article 						= 	Fabricate(:article)
        @user 							= 	Fabricate(:user)
        @category						= 	Fabricate(:category)
        @article.user 			= 	@user
        @article.category 	= 	@category
        @article.save
    end
    #  subject {@user}
    describe "when saving," do
      it "has a content." do
        @article.content.size.should > 0
 			end

 			it "has a user and category." do
        @article.category.name.size.should > 0
        @article.user.email.size.should > 0
 			end
 		end	
end
