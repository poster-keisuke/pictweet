class TweetsController < ApplicationController

	def index
		@tweets = Tweet.all.order("created_at DESC")
	end

	def new
	end

	def create
		@tweet = Tweet.new(tweet_params)
		@tweet.save
	end

	private

	def tweet_params
		params.permit(:name, :image, :text)
	end

end
