class TweetsController < ApplicationController
  before_action :set_ideaid, only: [:index, :new, :create, :show]

  def index
    @tweets = Tweet.all.order('created_at DESC')
  end

  def new
    @idea = Idea.find(params[:idea_id])
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to idea_tweets_path
    else
      render :new
    end
  end

  def show
  end

  private

  def tweet_params
    params.permit(:idea_id).merge(user_id: current_user.id)
  end

  def set_ideaid
    @idea = Idea.find(params[:idea_id])
  end
end
