class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :text 
      t.string :title 
      t.string :url
      t.integer :channel_id
      t.timestamps
    end
  end
end

