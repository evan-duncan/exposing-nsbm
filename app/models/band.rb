class Band < ApplicationRecord
  validates_presence_of :name
  validates :country_code,
    presence: true,
    length: { is: 2 }
end
