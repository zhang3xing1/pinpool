require 'spec_helper'

describe "user session" do
  # subject (:user) { Fabricate(:user) }

  # it "sees sign in page" do
  #   get new_user_session_path
  #   p new_user_session_path
  #   response.status.should == 200
  #   response.body.should include('Sign in')
  # end

end













# describe "outer" do 
#   before(:each) { puts "first IN OUTER" } 
#   describe "inner" do
#     before(:each) { puts "second IN INNER" } 
#     it { puts "third IN INNER"}
#     after(:each) { puts "fourth IN INNER" }
#   end
#   after(:each) { puts "fifth IN OUTER" }
# end


# $count = 0
# describe "let!" do
#   invocation_order = []

#   let!(:count) do
#     invocation_order << :let!
#     $count += 1
#   end

#   it "calls the helper method in a before hook" do
#     invocation_order << :example
#     invocation_order.should == [:let!, :example]
#     count.should eq(1)
#   end
# end