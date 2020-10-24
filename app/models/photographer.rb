class Photographer < ApplicationRecord
  has_many :photos
  validates :photographer, presence: true, uniqueness: true

  def self.search(search)
    if search
      photographer = Photographer.find_by(photographer: search)
      if photographer
        where(id: photographer)
      else
        Photographer.all
      end
    else
      Photographer.all
    end
  end
end
