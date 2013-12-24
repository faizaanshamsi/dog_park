require 'spec_helper'

describe Dog do
  describe 'Database Tests' do

  it { should have_db_column(:name).of_type(:string) }

  end

  describe 'Validation Tests' do

    it { should have_valid(:name).when('faizaan', 'mo', 'mo zhu') }
    it { should_not have_valid(:name).when('', nil) }

  end

  describe 'Association Tests' do

    it { should have_many(:owner_dogs) }
    it { should have_many(:owners).through(:owner_dogs) }

  end
end
