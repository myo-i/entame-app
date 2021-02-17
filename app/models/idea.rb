class Idea < ApplicationRecord
  belongs_to :user
  has_one :tweet

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  with_options presence: true do
    validates :title
    validates :idea_1
    validates :idea_2
    validates :idea_3
    validates :genre_id, numericality: { other_than: 1 }
  end
end
