require 'rails_helper'

RSpec.describe BandMembership, type: :model do
  context 'associations' do
    it { should belong_to(:band) }
    it { should belong_to(:artist) }
  end
end
