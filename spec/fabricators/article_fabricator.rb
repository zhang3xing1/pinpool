Fabricator(:article) do
  content		{Faker::LoremCN.sentence}
  title			{Faker::LoremCN.word}
end