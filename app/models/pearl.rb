class Pearl < ApplicationRecord
  belongs_to :user
  belongs_to :game
  
  validates :quote, presence: true
end
