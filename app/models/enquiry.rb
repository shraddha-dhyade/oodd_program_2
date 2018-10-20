class Enquiry < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :subject,  :presence => true
end
