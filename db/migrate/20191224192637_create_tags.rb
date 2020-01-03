class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.integer :team_id
      t.integer :article_id
    end
  end
end
