class Idea < ApplicationRecord
  belongs_to :user
  has_one :tweet
end
