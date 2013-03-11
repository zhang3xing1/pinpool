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

Fabricator(:article) do
  content		{Faker::LoremCN.sentence}
  title			{Faker::LoremCN.word}
end
