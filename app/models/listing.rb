class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :company, {:optional => true }
  has_many :enquiries

  has_attached_file :listing_img, styles: { listing_index: "100x100>", listing_show: "300x300>" }, default_url: "/images/:style/missing.png"
  #validates_attachment_content_type :listing_img, content_type: /\Aimage\/.*\z/
  validates_attachment_file_name :listing_img, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end
