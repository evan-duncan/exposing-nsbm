require 'rails_helper'

RSpec.describe Artist, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:country_code) }
    it { should validate_length_of(:country_code).is_equal_to(2) }
  end

  context 'associations' do
    it { should have_many(:band_memberships) }
    it { should have_many(:bands).through(:band_memberships) }
  end
end
