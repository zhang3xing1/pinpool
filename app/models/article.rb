class Article < ActiveRecord::Base
  attr_accessible :ccontent
  belongs_to 			:user
  belongs_to 			:category

  paginates_per 30
end
