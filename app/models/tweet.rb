class Tweet < ApplicationRecord
  belongs_to :user
  belongs_to :idea

  def self.search(search)
    if search != ""
      Idea.where('title LIKE(?)', "%#{search}%")
    else
      Idea.all
    end
  end
end
