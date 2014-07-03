class TweetsController < ApplicationController

  def index
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end

    # max_count = 4
    # count = 0
    # while count < max_count
    #   @tweets = @client.search("4th of july", results: 'mixed').take(1_000_000)
    #   @tweets.each do |tweet|
    #     if (tweet.attrs[:geo])
    #       Tweet.create( lat:      tweet.attrs[:geo][:coordinates][0],
    #                     long:     tweet.attrs[:geo][:coordinates][1],
    #                     handle:   tweet.attrs[:user][:screen_name],
    #                     link_id:  tweet.attrs[:id],
    #                     content:  tweet.text
    #                     )
    #     end
    # end
    # count += 1
    # end

    @tweet_array = Tweet.all

    respond_to do |format|
      format.html
      format.json  { render :json => @tweet_array }
    end
  end
end
