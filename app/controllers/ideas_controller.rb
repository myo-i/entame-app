class IdeasController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]
  before_action :set_idea, only: [:show, :edit, :update, :destroy]

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

  def edit
  end

  def update
    if @idea.update(idea_params)
      redirect_to ideas_path
    else
      render :show
    end
  end

  def destroy
    if @idea.destroy
      redirect_to ideas_path
    else
      render :show
    end
  end

  private 

  def idea_params
    params.require(:idea).permit(:title, :idea_1, :idea_2, :idea_3, :genre_id).merge(user_id: current_user.id)
  end

  def set_idea
    @idea = Idea.find(params[:id])
  end
end
