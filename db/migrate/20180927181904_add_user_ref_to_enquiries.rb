class AddUserRefToEnquiries < ActiveRecord::Migration[5.2]
  def change
    add_reference :enquiries, :user, foreign_key: true
  end
end
