class AddCompanyRefToListing < ActiveRecord::Migration[5.2]
  def change
    add_reference :listings, :company, foreign_key: true
  end
end
