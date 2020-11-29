class IdeasController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def top
  end

  def index 
    @ideas = current_user.ideas
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to ideas_path
    else
      render :new
    end
  end

  def show
  end

  private 

  def idea_params
    params.require(:idea).permit(:title, :idea_1, :idea_2, :idea_3).merge(user_id: current_user.id)
  end
end
