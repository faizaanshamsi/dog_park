require 'spec_helper'

describe OwnerDog do
  describe 'Database Tests' do

    it { should have_db_column(:owner_id).of_type(:integer) }
    it { should have_db_column(:dog_id).of_type(:integer) }

  end

  describe 'Validation Tests' do

    it { should validate_numericality_of(:owner_id).only_integer }
    it { should validate_numericality_of(:dog_id).only_integer }

  end

  describe 'Association Tests' do

    it { should belong_to(:owner) }
    it { should belong_to(:dog) }

  end
end
