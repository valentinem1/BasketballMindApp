class DropTaggingsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :taggings 
  end
end
