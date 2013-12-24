class Dog < ActiveRecord::Base

  validates :name, length: { minimum: 1 }

  has_many :owner_dogs,
    inverse_of: :dog

  has_many :owners,
    through: :owner_dogs

end
