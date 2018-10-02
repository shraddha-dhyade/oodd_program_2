class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :addres
      t.string :size
      t.integer :revenue
      t.text :synopsis

      t.timestamps
    end
  end
end
