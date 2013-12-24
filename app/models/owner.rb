class Owner < ActiveRecord::Base

  validates :first_name, length: { minimum: 1 }
  validates :last_name, length: { minimum: 1 }
  validates :email, length: { minimum: 1 }

  has_many :owner_dogs,
    inverse_of: :owner

  has_many :dogs,
    through: :owner_dogs

end
