class SearchTweetsService
  def self.search(search)
    if search != ""
      Tweet.where("text LIKE(?)", "%#{search}%")
    else
      Tweet.all
    end
  end
end