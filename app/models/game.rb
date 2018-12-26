class Game < ApplicationRecord
  belongs_to :user
  has_many :pearls

  validates :title, :description, presence: true
end
