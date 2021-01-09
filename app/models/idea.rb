class Idea < ApplicationRecord
  belongs_to :user
  has_one :tweet

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
end
