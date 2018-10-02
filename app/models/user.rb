class User < ApplicationRecord
  has_many :enquiries
  has_many :listings
  belongs_to :company, {:optional => true}
end
