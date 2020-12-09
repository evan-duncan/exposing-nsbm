class Artist < ApplicationRecord
  validates_presence_of :name
  validates :country_code,
    presence: true,
    length: { is: 2 }

  has_many :band_memberships
  has_many :bands, through: :band_memberships
end
