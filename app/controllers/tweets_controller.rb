class TweetsController < ApplicationController

  def index
    if params[:q]
      @client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
        config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
        config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
        config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
      end

      @search_results_array = []
      max_count = 3
      count = 0

      while count < max_count
        search_tweets = @client.search("#{params[:q]}", results: 'mixed').take(1000)
        search_tweets.each do |tweet|

          if tweet.attrs[:geo]
            @search_results_array << tweet
          end

        end # End do
      end # End while loop
    end # End if
  end # End Def Index
end # End class
