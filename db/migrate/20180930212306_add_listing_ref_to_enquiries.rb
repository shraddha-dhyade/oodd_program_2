class AddListingRefToEnquiries < ActiveRecord::Migration[5.2]
  def change
    add_reference :enquiries, :listing, foreign_key: true
  end
end

