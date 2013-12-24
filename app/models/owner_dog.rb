class OwnerDog < ActiveRecord::Base

  validates_numericality_of :owner_id, only_integer: true, allow_nil: false
  validates_numericality_of :dog_id, only_integer: true, allow_nil: false

  belongs_to :owner,
    inverse_of: :owner_dogs

  belongs_to :dog,
    inverse_of: :owner_dogs

end
