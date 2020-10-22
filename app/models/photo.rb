class Photo < ApplicationRecord
  belongs_to :photographer
  validates :photographer, :width, :height, :url, :download_url, presence: true
  validates :url, :download_url, uniqueness: true
  validates :width, :height, numericality: { only_integer: true }
end
