class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :title
      t.string :description
      t.string :deck_image, :default => "/assets/no-image-provided.png"
      t.float :deck_score
      t.boolean :private?, :default => false
      t.belongs_to :author
      t.timestamps
    end
  end
end
