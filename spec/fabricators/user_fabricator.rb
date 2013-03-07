Fabricator(:user) do
  email				{Faker::Internet.email}
  password		{Faker::LoremCN.sentence}
end