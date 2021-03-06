class Band < ApplicationRecord
  validates_presence_of :name
  validates :country_code,
    presence: true,
    length: { is: 2 }

  has_many :band_memberships
  has_many :artists, through: :band_memberships
end
