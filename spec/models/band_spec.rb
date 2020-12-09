require 'rails_helper'

RSpec.describe Band, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:country_code) }
    it { should validate_length_of(:country_code).is_equal_to(2) }
  end
end
