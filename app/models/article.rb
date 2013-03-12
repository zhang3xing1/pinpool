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
  attr_accessible :content, :title, :status
  has_one					:category
  belongs_to 			:user
  belongs_to 			:category

  validates 			:title, :content, :status, presence: true

  after_save 			:default_status

  paginates_per 30

  private
  	def default_status
  		self.status = 'draft' if self.status.nil?
  	end
end
