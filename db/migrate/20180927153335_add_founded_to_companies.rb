class AddFoundedToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :founded, :integer
  end
end
