# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  content     :text
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  title       :string(255)
#

require 'spec_helper'

describe Article do
    before(:each) do
        @article 			      = 	Fabricate.build(:article)
        @user 				      = 	Fabricate(:user)
        @category           = 	Fabricate(:category)
        @article.user       = 	@user
        @article.category 	= 	@category 
        
    end
    #  subject {@user}
    describe "when first saving," do
      it "has a content." do
        @article.status = 'draft'
        @article.save!
        @article.content.size.should > 0
 	    end

 	    it "has a user and category." do
        @article.status = 'draft'
        @article.save!
        @article.category.name.size.should > 0
        @article.user.email.size.should > 0
 	    end

      it "staus = draft" do
        @article.save
        @article.status.should == 'draft'
      end

 	end	
end
