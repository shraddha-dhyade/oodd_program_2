class User < ApplicationRecord
  has_many :enquiries
  has_many :listings
  belongs_to :company, {:optional => true}

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model

end
