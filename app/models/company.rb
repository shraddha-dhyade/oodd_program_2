class Company < ApplicationRecord
  has_many :listings
  has_many :users
end
