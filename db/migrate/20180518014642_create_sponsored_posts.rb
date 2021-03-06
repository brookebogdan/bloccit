class CreateSponsoredPosts < ActiveRecord::Migration
  def change
    create_table :sponsored_posts do |t|
      t.string :title
      t.text :body
      t.integer :price
      t.belongs_to :topic, index: true

      t.timestamps null: false
    end
  end
end
