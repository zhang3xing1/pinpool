require 'spec_helper'

describe PagesController do

  describe "GET Home" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

end
