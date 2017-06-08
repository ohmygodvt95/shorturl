class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.integer :user_id
      t.integer :views, default: 0
      t.string :alias
      t.string :origin
      t.timestamps
    end
  end
end
