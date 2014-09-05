 atom_feed do |feed|
	feed.title "Blog feed"
	feed.updated(@articles.first.created_at)
	
	 @articles.each do |article|
		feed.entry(article) do |entry|
			entry.title (article.title)
			entry.content article.text

		end
	end
end
