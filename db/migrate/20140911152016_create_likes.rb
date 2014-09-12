class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :ip_address
      t.integer :blog_entry_id

      t.timestamps
    end
  end
end
