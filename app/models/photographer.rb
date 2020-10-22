class Photographer < ApplicationRecord
  has_many :photos
  validates :photographer, presence: true
end
