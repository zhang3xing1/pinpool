module ArticlesHelper
	def text2html text
		RDiscount.new(h text).to_html
	end
end
