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

class Article < ActiveRecord::Base
  attr_accessible :ccontent
  belongs_to 			:user
  belongs_to 			:category

  paginates_per 30
end
