class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :location
      t.integer :square_footage
      t.integer :year_built
      t.string :style
      t.integer :list_price
      t.integer :floors
      t.boolean :basement
      t.string :current_house_owner
      t.integer :contact

      t.timestamps
    end
  end
end
