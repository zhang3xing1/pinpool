class Article < ActiveRecord::Base
  attr_accessible :ccontent
  belongs_to 			:user
  belongs_to 			:category
end
