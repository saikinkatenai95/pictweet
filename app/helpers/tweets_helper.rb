module TweetsHelper
  def tweet_lists(tweets)
    html = ""
    tweets.each do |tweet|
      html += render(partial: "tweet",locals: { tweet: tweet })
    end
    return raw(html)
  end
end
