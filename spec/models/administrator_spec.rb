require 'rails_helper'

RSpec.describe Administrator, type: :model do
  context 'validations' do
    it { should have_secure_password }
  end
end
