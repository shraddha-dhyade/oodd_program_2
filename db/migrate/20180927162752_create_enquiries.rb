class CreateEnquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :enquiries do |t|
      t.string :subject
      t.text :message_content

      t.timestamps
    end
  end
end
